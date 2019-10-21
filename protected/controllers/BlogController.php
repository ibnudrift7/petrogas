<?php

class BlogController extends Controller
{

	public function actionIndex()
	{

		$criteria = new CDbCriteria;
		$criteria->with = array('description');
		$criteria->addCondition('t.active = "1"');
		if ( isset($_GET['category']) AND $_GET['category'] == 'financial' ) {
			$criteria->addCondition('t.category_id = "2"');
		} else {
			$criteria->addCondition('t.category_id != "2"');
		}
		
		
		if ( isset($_GET['topik']) ) {
			$criteria->addCondition('t.topik_id = :topik_ids');
			$criteria->params[':topik_ids'] = intval($_GET['topik']);
		}

		$criteria->addCondition('description.language_id = :language_id');
		$criteria->params[':language_id'] = $this->languageID;
		$criteria->order = 'date_input DESC';

		$dataBlog = new CActiveDataProvider('Blog', array(
			'criteria'=>$criteria,
		    'pagination'=>array(
		        'pageSize'=>9,
		    ),
		));

		// $arrayFeatured = array();
		// foreach ($dataFeatured->getData() as $key => $value) {
		// 	$arrayFeatured[] = $value->id;
		// }

		// $criteria->addNotInCondition('t.id', $arrayFeatured);
		// $dataBlog = new CActiveDataProvider('Blog', array(
		// 	'criteria'=>$criteria,
		//     'pagination'=>array(
		//         'pageSize'=>12,
		//     ),
		// ));

		$this->layout='//layouts/column2';
		$this->pageTitle = 'News & Events - '.$this->pageTitle;
		
		if ( isset($_GET['category']) AND $_GET['category'] == 'financial' ) {
			$this->render('//home/investorfinancial', array(
				'dataBlog'=>$dataBlog,
			));
		} else {
			$this->render('index', array(
				'dataBlog'=>$dataBlog,
			));
		}
		
	}

	public function actionDetail($id)
	{
		$criteria = new CDbCriteria;
		$criteria->with = array('description');
		$criteria->addCondition('active = "1"');
		$criteria->addCondition('description.language_id = :language_id');
		$criteria->params[':language_id'] = $this->languageID;
		$criteria->addCondition('t.id = :id');
		$criteria->params[':id'] = intval( htmlspecialchars($id) );
		$criteria->order = 't.date_input DESC';
		$data = Blog::model()->find($criteria);
		if($data===null)
			throw new CHttpException(404,'The requested page does not exist.');

		$criteria = new CDbCriteria;
		$criteria->order = 'RAND()';
		$criteria->addCondition('id != :id');
		$criteria->params[':id'] = $data->id;
		$criteria->limit = 3;
		$dataBlogs = new CActiveDataProvider('Blog', array(
			'criteria'=>$criteria,
		    'pagination'=>false,
		));

		$this->pageTitle = $data->description->title . ' - News & Events - '.$this->pageTitle;
		$this->layout='//layouts/column2';

		$this->render('detail', array(
			'data' => $data,
			'dataBlogs' => $dataBlogs,
		));
	}

	public function actionList()
	{

		$this->layout='//layouts/home';

		// convert to list item menu
		$categoryName = Product::model()->getCategoryName();

		$konten = Blog::model()->getAllData(10, false, $this->languageID);

		$this->pageTitle = $konten['pageTitle'].' - ' . $this->pageTitle;
		if ($_GET['topik'] == 'topik-panduan-pemula') {
		$this->render('panduan', array(
			'categoryName'=>$categoryName,
			'data'=> $konten,
		));
		}elseif($_GET['topik'] == 'topik-workout-list'){
		$this->render('workout', array(
			'categoryName'=>$categoryName,
			'data'=> $konten,
		));
		}else{
		$this->render('list', array(
			'categoryName'=>$categoryName,
			'data'=> $konten,
		));
		}
	}

	public function actionCalculator()
	{

		$this->layout='//layouts/home';
		$this->pageTitle = 'Fitness Calculator | ' . $this->pageTitle;
		$this->render('calculator', array(
		));
	}

	public function actionCalc($type)
	{
		switch ($type) {
			case 'bmi':
				$tampilan = 'calc-bmi';
				break;
			
			case 'bmr':
				$tampilan = 'calc-bmr';
				break;
			
			case 'kalori':
				$tampilan = 'calc-kalori';
				break;
			
			case 'minum':
				$tampilan = 'calc-minum';
				break;
			
			case 'nutrisi':
				$tampilan = 'calc-nutrisi';
				break;
			
			default:
				$tampilan = 'calc-bmi';
				break;
		}

		$this->layout='//layoutsAdmin/mainKosong';
		$this->pageTitle = 'Fitness Calculator | ' . $this->pageTitle;
		$this->render($tampilan, array(
		));
	}

	// public function actionPanduan()
	// {

	// 	$this->layout='//layouts/home';
	// 	$this->pageTitle = 'Panduan Fitness untuk Pemula | ' . $this->pageTitle;
	// 	$this->render('panduan', array(
	// 	));
	// }
	// public function actionWorkout()
	// {

	// 	$this->layout='//layouts/home';
	// 	$this->pageTitle = 'Workout List Fitness | ' . $this->pageTitle;
	// 	$this->render('workout', array(
	// 	));
	// }
}