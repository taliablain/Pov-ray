//KUKA KR 360 


#include "colors.inc"
#include "finish.inc"
#include "textures.inc"
#include "shapes.inc"

 camera {
  location <0,2,7>
  up    <0,1,0>
  right  <-1.33,0,0> 
  look_at <0,3,0>
 }
 
 light_source{<0,10,0> color White  }
 
 plane { y, -5 
        pigment { checker pigment{color White}, pigment{color Black} scale 5}
       }  
       
union{
    //Arm bit
    cylinder{<0,0,0>,<0, 0.4,0>,0.2} 
    sphere {<0,0.4,0>, 0.2} 
    cylinder{<0,0.4,0>,<0.5,1.045,0>,0.2}
    sphere {<0.5,1.045,0>, 0.2} 
    cylinder{<0.5,1.045,0>,<0.5,2.345,0>,0.2}
    sphere {<0.5,2.345,0>, 0.25}
    cylinder{<0.5,2.345,0>,<1.210,2.345,0>,0.2}
    cylinder{<1.210,2.345,0>,<1.525,2.345,0>,0.2}
    cylinder{<1.525,2.345,0>,<1.815,2.345,0>,0.2}
    pigment{OrangeRed}
    rotate <0, -clock*360, 0>
    }
  
    
    
    union{
    	disc{<1.210,2.345,0>,<1,0,0>,0.22}
	disc{<1.525,2.345,0>,<1,0,0>,0.22}
	cylinder{<1.815,2.345,0>,<2.1,2.345,0>,0.15}
	pigment{Black}
	rotate <0, -clock*360, 0>
      }
      

    
 


 

