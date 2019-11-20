<?php

/**
 * This is the model class for table "tb_managements".
 *
 * The followings are the available columns in table 'tb_managements':
 * @property string $id
 * @property string $type_board
 * @property string $image
 * @property string $name
 * @property string $age
 * @property string $position_en
 * @property string $position_id
 * @property string $content_en
 * @property string $content_id
 * @property integer $sorts
 * @property integer $actives
 */
class Managements extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Managements the static model class
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
		return 'tb_managements';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('type_board', 'required'),
			array('sorts, actives', 'numerical', 'integerOnly'=>true),
			array('type_board', 'length', 'max'=>50),
			array('image, name', 'length', 'max'=>225),
			array('age', 'length', 'max'=>10),
			// The following rule is used by search().
			array('image, name, age, position_en, position_id, content_en, content_id, sorts, actives', 'safe'),
			// Please remove those attributes that should not be searched.
			array('id, type_board, image, name, age, position_en, position_id, content_en, content_id, sorts, actives', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'type_board' => 'Type Board',
			'image' => 'Image',
			'name' => 'Name',
			'age' => 'Age',
			'position_en' => 'Position English',
			'position_id' => 'Position Indonesia',
			'content_en' => 'Content English',
			'content_id' => 'Content Indonesia',
			'sorts' => 'Sorts',
			'actives' => 'Actives',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id,true);
		$criteria->compare('type_board',$this->type_board,true);
		$criteria->compare('image',$this->image,true);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('age',$this->age,true);
		$criteria->compare('position_en',$this->position_en,true);
		$criteria->compare('position_id',$this->position_id,true);
		$criteria->compare('content_en',$this->content_en,true);
		$criteria->compare('content_id',$this->content_id,true);
		$criteria->compare('sorts',$this->sorts);
		$criteria->compare('actives',$this->actives);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}