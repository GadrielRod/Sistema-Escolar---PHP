<?php
	class Turma{
		private $disciplina;
		private $professor;
		
		public function __construct($a,$b){
			$this->disciplina = $a;
			$this->professor = $b;
			
		}

		public function setDisciplina($n){
			$this->disciplina = $n;
		}

		public function getDisciplina(){
			return $this->disciplina;
		}
		
		public function setProfessor($n){
			$this->professor = $n;
		}

		public function getProfessor(){
			return $this->professor;
		}
		

		public function __toString(){
			return "<b>Disciplina: </b>".$this->disciplina . " dada pelo <b>professor: </b>".$this->professor;
		}	
	}


?>