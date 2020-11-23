/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.middlewareinventory.sarav;


import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author aksarav
 */
public class MemMonster {
    
    public void MemMonsterThread(int maxsize,int MBPerbite, int Sleeptime) throws InterruptedException
  {
    Vector v = new Vector();
    while (true)
    {
        
      int MBToB=MBPerbite*1000000;
      Logger.getLogger(MemMonster.class.getName()).log(Level.INFO, "Allocating "+MBToB+" To the Vector");
      byte b[] = new byte[MBToB];
      v.add(b);
      Runtime rt = Runtime.getRuntime();
      //System.out.println(" Memory Monster Invoked");
      Logger.getLogger(MemMonster.class.getName()).log(Level.INFO, "After Allocation free memory: "+ rt.freeMemory() );
      System.out.println("Current VectorSize:"+v.size());
      
      int SecToMs = Sleeptime*1000;
      Logger.getLogger(MemMonster.class.getName()).log(Level.INFO, "Taking a Chewing Break for "+SecToMs+" Milliseconds");
      Thread.sleep(SecToMs);
          
      if (v.size() == maxsize)
      {
          Logger.getLogger(MemMonster.class.getName()).log(Level.INFO,"Clearing the Vector as MaxSize of"+maxsize+"Reached");
          Logger.getLogger(MemMonster.class.getName()).log(Level.INFO,"End Of Thread"+Thread.currentThread().getName());
          v.clear();
          break;
      }
      
    }
  }
}
