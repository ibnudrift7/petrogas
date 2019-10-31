<?php

/**
 * This is the model class for table "tb_blockbuilding".
 *
 * The followings are the available columns in table 'tb_blockbuilding':
 * @property string $id
 * @property string $nama
 * @property string $lokasi_blok
 * @property string $image
 * @property string $facts_info
 * @property string $facilities_info
 * @property integer $sorts
 * @property integer $active
 */
class Blockbuilding extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Blockbuilding the static model class
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
		return 'tb_blockbuilding';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nama', 'required'),
			array('sorts, active', 'numerical', 'integerOnly'=>true),
			array('nama, lokasi_blok', 'length', 'max'=>225),
			array('facts_info, facilities_info', 'safe'),
			// The following rule is used by search().
			array('image','safe'),
			// Please remove those attributes that should not be searched.
			array('id, nama, lokasi_blok, image, facts_info, facilities_info, sorts, active', 'safe', 'on'=>'search'),
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
			'nama' => 'Nama',
			'lokasi_blok' => 'Lokasi Blok',
			'image' => 'Image',
			'facts_info' => 'Facts Info',
			'facilities_info' => 'Facilities Info',
			'sorts' => 'Sorts',
			'active' => 'Active',
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
		$criteria->compare('nama',$this->nama,true);
		$criteria->compare('lokasi_blok',$this->lokasi_blok,true);
		$criteria->compare('image',$this->image,true);
		$criteria->compare('facts_info',$this->facts_info,true);
		$criteria->compare('facilities_info',$this->facilities_info,true);
		$criteria->compare('sorts',$this->sorts);
		$criteria->compare('active',$this->active);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}