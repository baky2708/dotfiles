local kp = dofile('../functions-lua/kp.lua')

local lu = require('luaunit')

local TestGetIdProcessMsg = {
	msg01 = 'Testa se é uma função.',
	msg02 = 'Testa se retorna uma table.',
	msg03 = 'Testa se o tamanho da list é 1.',
}

local TestCheckArgsMsg = {
	msg04 = 'Testa se retorna FALSE quando NÃO possue argumentos.',
	msg05 = 'Testa se retorna TRUE quando não possue argumentos.',
}

local TestKillProcessMsg = {
	msg06 = 'Testa se encerra um processo.',
}

local TestConfirmateMsg = {
	msg07 = 'Testa se é verdadeiro caso input seja \'y\'',
}

TestGetIdProcess = {}
function TestGetIdProcess:testFunc()
	local result
	result = kp.get_id_process
	lu.assertIsFunction(result)
end

function TestGetIdProcess:testTable()
	local result = kp.get_id_process('process')
	lu.assertIsTable(result, TestGetIdProcessMsg.msg02)
end

function TestGetIdProcess:testEmpty()
	local result = kp.get_id_process()
	lu.assertNotTrue(result, TestGetIdProcessMsg.msg02)
end

function TestGetIdProcess:testLength()
	local process = 'sleep 0.02 &'
	local result

	result = kp.get_id_process('sleep')
	lu.assertEquals(#result, 0, TestGetIdProcessMsg.msg03)

	os.execute(process)
	result = kp.get_id_process('sleep')
	lu.assertEquals(#result, 1, TestGetIdProcessMsg.msg03)
	os.execute('pkill sleep')
end

TestCheckArgs = {}
function TestCheckArgs:testArgsFalse()
	arg[1] = nil
	local result = kp.check_args(arg[1])
	lu.assertFalse(result, TestCheckArgsMsg.msg04)
end

function TestCheckArgs:testArgsTrue()
	arg[1] = 'hei'
	local result = kp.check_args(arg[1])
	lu.assertTrue(result, TestCheckArgsMsg.msg04)
end

TestKillProcess = {}
function TestKillProcess:testOneKill()
	local process = 'sleep'
	local result

	result = kp.get_id_process(process)
	lu.assertEquals(#result, 0, TestKillProcessMsg.msg06)

	os.execute('sleep 1 &')
	result = kp.get_id_process(process)
	lu.assertEquals(#result, 1, TestKillProcessMsg.msg06)

	for _,v in pairs(result) do
		kp.kill_process(v)
	end

	result = kp.get_id_process(process)
	lu.assertEquals(#result, 0, TestKillProcessMsg.msg06)
end

function TestKillProcess:testMultKill()
	local process = 'sleep'
	local result

	result = kp.get_id_process(process)
	lu.assertEquals(#result, 0, TestKillProcessMsg.msg06)

	os.execute('sleep 1 &')
	os.execute('sleep 1 &')
	os.execute('sleep 1 &')
	os.execute('sleep 1 &')
	result = kp.get_id_process(process)
	lu.assertEquals(#result, 4, TestKillProcessMsg.msg06)

	for _,v in pairs(result) do
		kp.kill_process(v)
	end

	result = kp.get_id_process(process)
	lu.assertEquals(#result, 0, TestKillProcessMsg.msg06)
end

TestConfirmate = {}
function TestConfirmate:testInputY()
	local result
	result = kp.confirmate('y')
	lu.assertTrue(result)
end

function TestConfirmate:testInputN()
	local result
	result = kp.confirmate('n')
	lu.assertNotTrue(result)
end

os.exit(lu.LuaUnit.run())
