/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.middlewareinventory.sarav;

import java.util.Vector;

/**
 *
 * @author aksarav
 */
public class MemMonster {
    
    public MemMonster() throws InterruptedException
  {
    Vector v = new Vector();
    while (true)
    {
      byte b[] = new byte[1048576];
      v.add(b);
      Runtime rt = Runtime.getRuntime();
      System.out.println(" Memory Monster Invoked");
      System.out.println( "free memory: " + rt.freeMemory() );
      System.out.println("Current VectorSize:"+v.size());
      Thread.sleep(1000);
          
    }
  }
}
