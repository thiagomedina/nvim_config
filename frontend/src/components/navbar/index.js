import React from "react";
import {background} from './navbar.module.scss'

const Navbar = () => {
  return(
   <>
   <nav className={background}>
     <a><i className="fa fa-bars"></i></a>

   </nav>
   </>
  ) 
};

export default Navbar;
