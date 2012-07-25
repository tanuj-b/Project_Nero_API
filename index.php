<?php

require 'Slim/Slim.php';

$app = new Slim();

$app->get('/questions', 'getQuestions');
$app->get('/tests', 'getTests');

$app->run();

function getQuestions() {
	$sql = "SELECT * from questions where flag='1'";
	try {
		$db =  getConnection();
		$stmt = $db->query($sql);
		$projects = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
        // Include support for JSONP requests
        if (!isset($_GET['callback'])) {
            echo json_encode($projects);
        } else {
            echo $_GET['callback'] . '(' . json_encode($projects) . ');';
        }
	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}';
	}				
}

function getTests(){
	/*if (isset($_GET['name'])) {
        return getEmployeesByName($_GET['name']);
    } else if (isset($_GET['modifiedSince'])) {
        return getModifiedEmployees($_GET['modifiedSince']);
    }*/
	$sql = "SELECT p.id as id,p.name AS name,p.address,p.lat,p.lng,p.min_rate,p.max_rate, p.area, p.logo, b.name AS builder_name 
			FROM projects p LEFT JOIN builders b ON p.builder_id=b.id";
	try {
		$db = getConnection();
		$stmt = $db->query($sql);
		$projects = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
        // Include support for JSONP requests
        if (!isset($_GET['callback'])) {
            echo json_encode($projects);
        } else {
            echo $_GET['callback'] . '(' . json_encode($projects) . ');';
        }

	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}';
	}				
}

function getFloors(){
	$sql = "SELECT * from floors";
	
	try {
		$db = getConnection();
		$stmt = $db->query($sql);
		$projects = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		
        // Include support for JSONP requests
        if (!isset($_GET['callback'])) {
            echo json_encode($projects);
        } else {
            echo $_GET['callback'] . '(' . json_encode($projects) . ');';
        }

	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}';
	}				
}

function getFloorsByProjectId($projectId){
	$sql = "SELECT * from floors WHERE project_id=:projectId";
	try {
		$db = getConnection();
		$stmt = $db->prepare($sql);  
		$stmt->bindParam("projectId", $projectId);
		$stmt->execute();
		$project = $stmt->fetchAll(PDO::FETCH_OBJ);  
		$db = null;
		echo json_encode($project); 
	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}'; 
	}
}


function getQuestionByIds($questionId){
}

function getConnection() {
	$dbhost="127.0.0.1";
	$dbuser="root";
	$dbpass="";
	$dbname="edu";
	$dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);	
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $dbh;
}

?>