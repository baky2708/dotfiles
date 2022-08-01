package com.mycompany.app;

import java.util.Timer;
import java.util.TimerTask;

/**
 * Hello world!.
 */
public class App {
  Timer timer;

  public App(int seconds) {
    timer = new Timer();
    timer.schedule(new RemindTask(), seconds * 1000);
  }

  class RemindTask extends TimerTask {
    public void run() {
      System.out.println("Time's up!");
      timer.cancel(); //Terminate the timer thread
    }
  }

  public static void main(String[] args) {
    new App(2);
    System.out.println("Task scheduled.");
  }
}
