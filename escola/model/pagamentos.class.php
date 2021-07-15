<?php
	class Pagamentos{
		private $valor;
		private $data;
		private $financeira;
		
		public function __construct($a,$b,$c){
			$this->valor = $a;
			$this->data = $b;
			$this->financeira = $c;
			
		}

		public function setValor($n){
			$this->valor = $n;
		}

		public function getValor(){
			return $this->valor;
		}
		
		public function setData($n){
			$this->data = $n;
		}

		public function getData(){
			return $this->data;
		}
		
		public function setFinanceira($n){
			$this->financeira = $n;
		}

		public function getFinanceira(){
			return $this->financeira;
		}

		public function __toString(){
			return "<b>Valor: </b>".$this->valor . " da <b>data: </b>".$this->data . " do <b>código financeiro: </b>".$this->financeiro;
		}	
	}


?>