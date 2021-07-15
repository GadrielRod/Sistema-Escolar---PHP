<?php
	class Aluno{
		private $nome;
		
		
		public function __construct($a){
			$this->nome = $a;
			
		}

		public function setNome($n){
			$this->nome = $n;
		}

		public function getNome(){
			return $this->nome;
		}
		

		public function __toString(){
			return "<b>Aluno: </b>".$this->nome;
		}	
	}


?>