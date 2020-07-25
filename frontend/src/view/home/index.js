import React from "react";
import Navbar from "../../components/navbar";
import { background, btn, container } from "./home.module.scss";
const Home = () => {
  return (
    <>
      <Navbar />
      <div className={`${background}`}>
        <div className={container}>
          <h2>Faça seu currículo de forma rápida e simples</h2>
          <p>
            Escrever seletores assim é um tiro no pé. O CSS fica ruim de
            entender e o trabalho de cascata do CSS – que é o que faz o CSS tão
            especial – pode se perder, já que você vai precisar fazer um outro
          
          s</p>
          <button className={btn}>começar</button>
        </div>
      </div>
    </>
  );
};

export default Home;
