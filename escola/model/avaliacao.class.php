<?php
	class Avaliacao{
		private $n1;
		private $n2;
		private $matricula;
		
		public function __construct($a,$b, $c){
			$this->n1 = $a;
			$this->n2 = $b;
			$this->matricula = $c;
		}

		public function setN1($n){
			$this->n1 = $n;
		}

		public function getN1(){
			return $this->n1;
		}
		
		public function setN2($n){
			$this->n2 = $n;
		}

		public function getN2(){
			return $this->n2;
		}
		
		public function setMatricula($n){
			$this->matricula = $n;
		}

		public function getMatricula(){
			return $this->matricula;
		}

		public function __toString(){
			return "<b>N1: </b>".$this->n1 . "<b>N2: </b>".$this->n2 . " do <b>número de matrícula: </b>".$this->matricula;
		}	
	}


?>