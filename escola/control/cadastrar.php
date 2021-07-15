<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>e-Escola</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="deion" content="sistema de teste para escola QI">
    <meta name="msapplication-tap-highlight" content="no">
    <link href="../view/main.css" rel="stylesheet">
</head>

<?php
  if (isset($_POST['cadEscola']) and $_POST['cadEscola']=="1"){
	      require_once "conexao.php";
	      require_once "../model/escola.class.php";
		  $escola = new Escola($_POST['nome']);
		  try { 
			 $comandoSQL = "INSERT INTO tbescola (tbEscolaNome) VALUES ('".$escola->getNome()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Escola cadastrada com sucesso!
					</div>';
			header("Refresh:3; ../view/cadEscola.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }   	  
  }elseif (isset($_POST['cadSala']) and $_POST['cadSala']=="2"){
	      require_once "conexao.php";
	      require_once "../model/sala.class.php";
		  $sala = new Sala($_POST['nome'],$_POST['escola']);
		  try { 
			 $comandoSQL = "INSERT INTO tbsala (tbSalaNome,tbSalaEscola) VALUES ('".$sala->getNome()."','".$sala->getEscola()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Sala cadastrada com sucesso!
					</div>';
			header("Refresh:3; ../view/cadSala.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadDisciplina']) and $_POST['cadDisciplina']=="3"){
	      require_once "conexao.php";
	      require_once "../model/disciplina.class.php";
		  $disciplina = new Disciplina($_POST['nome']);
		  try { 
			 $comandoSQL = "INSERT INTO tbdisciplina (tbDisciplinaNome) VALUES ('".$disciplina->getNome()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Disciplina cadastrada com sucesso!
					</div>';
			header("Refresh:3; ../view/cadDisciplina.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadCurso']) and $_POST['cadCurso']=="4"){
	      require_once "conexao.php";
	      require_once "../model/curso.class.php";
		  $curso = new Curso($_POST['nome'],$_POST['valor']);
		  try { 
			 $comandoSQL = "INSERT INTO tbcurso (tbCursoNome,tbCursoValor) VALUES ('".$curso->getNome()."','".$curso->getValor()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Curso cadastrado com sucesso!
					</div>';
			header("Refresh:3; ../view/cadCurso.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadAvaliacao']) and $_POST['cadAvaliacao']=="5"){
	      require_once "conexao.php";
	      require_once "../model/avaliacao.class.php";
		  $avaliacao = new Avaliacao($_POST['n1'],$_POST['n2'],$_POST['matricula']);
		  try { 
			 $comandoSQL = "INSERT INTO tbavaliacao (tbAvaliacaoN1,tbAvaliacaoN2,tbAvaliacaoMatricula) VALUES ('".$avaliacao->getN1()."','".$avaliacao->getN2()."','".$avaliacao->getMatricula()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Avaliação cadastrada com sucesso!
					</div>';
			header("Refresh:3; ../view/cadAvaliacao.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadAluno']) and $_POST['cadAluno']=="6"){
	      require_once "conexao.php";
	      require_once "../model/aluno.class.php";
		  $aluno = new Aluno($_POST['nome']);
		  try { 
			 $comandoSQL = "INSERT INTO tbaluno (tbAlunoNome) VALUES ('".$aluno->getNome()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Aluno cadastrado com sucesso!
					</div>';
			header("Refresh:3; ../view/cadAluno.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadFuncao']) and $_POST['cadFuncao']=="7"){
	      require_once "conexao.php";
	      require_once "../model/funcao.class.php";
		  $funcao = new Funcao($_POST['nome'],$_POST['salario']);
		  try { 
			 $comandoSQL = "INSERT INTO tbfuncao (tbFuncaoNome,tbFuncaoSalario) VALUES ('".$funcao->getNome()."','".$funcao->getSalario()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Função cadastrada com sucesso!
					</div>';
			header("Refresh:3; ../view/cadFuncao.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadFuncionario']) and $_POST['cadFuncionario']=="8"){
	      require_once "conexao.php";
	      require_once "../model/funcionario.class.php";
		  $funcionario = new Funcionario($_POST['nome'],$_POST['escola'],$_POST['funcao']);
		  try { 
			 $comandoSQL = "INSERT INTO tbfuncionario (tbFuncionarioNome,tbFuncionarioEscola,tbFuncionarioFuncao) VALUES ('".$funcionario->getNome()."','".$funcionario->getEscola()."','".$funcionario->getFuncao()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Funcionario cadastrado com sucesso!
					</div>';
			header("Refresh:3; ../view/cadFuncionario.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadPagamentos']) and $_POST['cadPagamentos']=="9"){
	      require_once "conexao.php";
	      require_once "../model/pagamentos.class.php";
		  $pagamentos = new Pagamentos($_POST['valor'],$_POST['data'],$_POST['financeira']);
		  try { 
			 $comandoSQL = "INSERT INTO tbpagamentos (tbPagamentosValor,tbPagamentosData,tbPagamentosFinanceira) VALUES ('".$pagamentos->getValor()."','".$pagamentos->getData()."','".$pagamentos->getFinanceira()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Pagamento cadastrado com sucesso!
					</div>';
			header("Refresh:3; ../view/cadPagamentos.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadProfessor']) and $_POST['cadProfessor']=="10"){
	      require_once "conexao.php";
	      require_once "../model/professor.class.php";
		  $professor = new Professor($_POST['nome'],$_POST['funcao']);
		  try { 
			 $comandoSQL = "INSERT INTO tbprofessor (tbProfessorNome,tbProfessorFuncao) VALUES ('".$professor->getNome()."','".$professor->getFuncao()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Professor cadastrado com sucesso!
					</div>';
			header("Refresh:3; ../view/cadProfessor.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadFinanceira']) and $_POST['cadFinanceira']=="11"){
	      require_once "conexao.php";
	      require_once "../model/financeira.class.php";
		  $financeira = new Financeira($_POST['aluno'],$_POST['curso']);
		  try { 
			 $comandoSQL = "INSERT INTO tbfinanceira (tbFinanceiraAluno,tbFinanceiraCurso) VALUES ('".$financeira->getAluno()."','".$financeira->getCurso()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Financeira cadastrada com sucesso!
					</div>';
			header("Refresh:3; ../view/cadFinanceira.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadTurma']) and $_POST['cadTurma']=="12"){
	      require_once "conexao.php";
	      require_once "../model/turma.class.php";
		  $turma = new Turma($_POST['disciplina'],$_POST['professor']);
		  try { 
			 $comandoSQL = "INSERT INTO tbturma (tbTurmaDisciplina,tbTurmaProfessor) VALUES ('".$turma->getDisciplina()."','".$turma->getProfessor()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Turma cadastrada com sucesso!
					</div>';
			header("Refresh:3; ../view/cadTurma.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadMatricula']) and $_POST['cadMatricula']=="13"){
	      require_once "conexao.php";
	      require_once "../model/matricula.class.php";
		  $matricula = new Matricula($_POST['aluno'],$_POST['turma']);
		  try { 
			 $comandoSQL = "INSERT INTO tbmatricula (tbMatriculaAluno,tbMatriculaTurma) VALUES ('".$matricula->getAluno()."','".$matricula->getTurma()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Matricula cadastrada com sucesso!
					</div>';
			header("Refresh:3; ../view/cadMatricula.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }elseif (isset($_POST['cadRelSalaDisc']) and $_POST['cadRelSalaDisc']=="14"){
	      require_once "conexao.php";
	      require_once "../model/relSalaDisc.class.php";
		  $relsaladisc = new RelSalaDisc($_POST['sala'],$_POST['disciplina']);
		  try { 
			 $comandoSQL = "INSERT INTO tbrelsaladisc (tbRelSalaDiscSala,tbRelSalaDiscDisciplina) VALUES ('".$relsaladisc->getSala()."','".$relsaladisc->getDisciplina()."')";
			 $grava = $pdo->prepare($comandoSQL);
			 $grava->execute(array()); 	                                        
			 echo '<br/><div class="alert alert-success" role="alert">
						Relação Sala e Disciplina cadastrada com sucesso!
					</div>';
			header("Refresh:3; ../view/cadRelSalaDisc.php");		
		  } catch(PDOException $e) { 
			 echo '<br/><div class="alert alert-success" role="alert">
						Erro ' . $e->getMessage() . 
				  '</div>';
		  }
  }		  
?>