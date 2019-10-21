<?php

/**
 * This is the model class for table "tb_teams_list".
 *
 * The followings are the available columns in table 'tb_teams_list':
 * @property integer $id
 * @property string $image
 * @property string $title
 * @property string $position_en
 * @property string $position_id
 * @property string $content
 * @property integer $sortings
 * @property integer $actives
 */
class TeamList extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return TeamList the static model class
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
		return 'tb_teams_list';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			// array('sortings, actives', 'numerical', 'integerOnly'=>true),
			array('title', 'length', 'max'=>225),
			array('content, sortings, actives, image, position_en, position_id', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, image, title, position_en, position_id, content, sortings, actives', 'safe', 'on'=>'search'),
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
			'image' => 'Image',
			'title' => 'Name',
			'position_en' => 'Posisi - English',
			'position_id' => 'Posisi - Indonesia',
			'content' => 'Content',
			'sortings' => 'Sortings',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('image',$this->image,true);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('position_en',$this->position_en,true);
		$criteria->compare('position_id',$this->position_id,true);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('sortings',$this->sortings);
		$criteria->compare('actives',$this->actives);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}