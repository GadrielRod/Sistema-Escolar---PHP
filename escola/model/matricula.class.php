<?php
	class Matricula{
		private $aluno;
		private $turma;
		
		public function __construct($a,$b){
			$this->aluno = $a;
			$this->turma = $b;
			
		}

		public function setAluno($n){
			$this->aluno = $n;
		}

		public function getAluno(){
			return $this->aluno;
		}
		
		public function setTurma($n){
			$this->turma = $n;
		}

		public function getTurma(){
			return $this->turma;
		}
		

		public function __toString(){
			return "<b>Aluno: </b>".$this->aluno . " da <b>turma: </b>".$this->turma;
		}	
	}


?>