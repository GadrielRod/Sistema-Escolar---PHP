<?php
	class RelSalaDisc{
		private $sala;
		private $disciplina;
		
		public function __construct($a,$b){
			$this->sala = $a;
			$this->disciplina = $b;
			
		}

		public function setSala($n){
			$this->sala = $n;
		}

		public function getSala(){
			return $this->sala;
		}
		
		public function setDisciplina($n){
			$this->disciplina = $n;
		}

		public function getDisciplina(){
			return $this->disciplina;
		}
		

		public function __toString(){
			return "<b>Sala: </b>".$this->sala . " com a <b>disciplina: </b>".$this->disciplina;
		}	
	}


?>