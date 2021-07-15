<?php
	class Financeira{
		private $aluno;
		private $curso;
		
		public function __construct($a,$b){
			$this->aluno = $a;
			$this->curso = $b;
			
		}

		public function setAluno($n){
			$this->aluno = $n;
		}

		public function getAluno(){
			return $this->aluno;
		}
		
		public function setCurso($n){
			$this->curso = $n;
		}

		public function getCurso(){
			return $this->curso;
		}
		

		public function __toString(){
			return "<b>Aluno: </b>".$this->aluno . " do <b>curso: </b>".$this->curso;
		}	
	}


?>