/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.middlewareinventory.sarav;



/**
 *
 * @author aksarav
 */
public class CPUMonster {
    
  
    public void CPUMonsterThread(int seconds) throws InterruptedException
    {
        double start = 0;
        long t0 = System.currentTimeMillis();

        while (((System.currentTimeMillis() - t0) / 1000) < seconds) {
            double x = Math.cos(start++);
        }
        
    }     
        
        
    }
   
