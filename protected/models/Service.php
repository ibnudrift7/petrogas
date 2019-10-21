<?php

/**
 * This is the model class for table "faq".
 *
 * The followings are the available columns in table 'faq':
 * @property integer $id
 * @property string $question
 * @property string $answer
 * @property integer $sort
 */
class Service extends CActiveRecord
{
	public $title;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Service the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tb_services';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('status', 'required'),
			// array('sort', 'numerical', 'integerOnly'=>true),
			// array('question', 'length', 'max'=>200),
			array('sorting', 'safe'),
			// Please remove those attributes that should not be searched.
			array('id, sorting, status', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'description'=>array(self::HAS_ONE, 'ServiceDescription', 'services_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			// 'question' => 'Question',
			// 'answer' => 'Answer',
			'sort' => 'Sort',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search($language_id)
	{
		$criteria=new CDbCriteria;

		$criteria->with = array('description');
	    $criteria->addCondition('description.language_id = :language_id');
	    $criteria->params[':language_id'] = $language_id;
	    
		$criteria->compare('id', $this->id);
		$criteria->compare('description.title', $this->title,true);
		// $criteria->compare('answer',$this->answer,true);
		$criteria->compare('status',$this->status);
		
		$criteria->order = 'status ASC';

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	public function getDataDesc($id, $languageId=1)
	{
		$criteria=new CDbCriteria;

		$criteria->addCondition('language_id = :language_id');
		$criteria->addCondition('services_id = :id');
		$criteria->params = array(
			':language_id'=>$languageId,
			':id'=>$id,
		);

		$model = ServiceDescription::model()->find($criteria);

		return $model;
	}

}