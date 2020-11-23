/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.middlewareinventory.sarav;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author aksarav
 */
public class XThread  {
        
        public void startNewCPUMonsterThread(final String seconds) {
        new Thread(new Runnable() {
        @Override
        public void run(){
            com.middlewareinventory.sarav.CPUMonster Obj1 = new com.middlewareinventory.sarav.CPUMonster();
            Logger.getLogger(XThread.class.getName()).log(Level.INFO,"New CPU Monster Thread Started");
            System.out.println(Thread.currentThread());
            try {
                Obj1.CPUMonsterThread(Integer.parseInt(seconds));
            } catch (InterruptedException ex) {
                Logger.getLogger(XThread.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        }).start();
     
}
        
         public void startNewMemoryMonsterThread(final String mmpt, String MBPerBite, String Sleeptime) {
        new Thread(new Runnable() {
        @Override
        public void run(){
            com.middlewareinventory.sarav.MemMonster OBJM = new com.middlewareinventory.sarav.MemMonster();
            Logger.getLogger(XThread.class.getName()).log(Level.INFO,"New Memory Monster Thread Started");
            try {
                OBJM.MemMonsterThread(Integer.parseInt(mmpt),Integer.parseInt(MBPerBite),Integer.parseInt(Sleeptime));
            } catch (InterruptedException ex) {
                Logger.getLogger(XThread.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        }).start();
        
         }

}
