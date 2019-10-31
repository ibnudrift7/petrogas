<?php

/**
 * This is the model class for table "tb_statistik_list".
 *
 * The followings are the available columns in table 'tb_statistik_list':
 * @property integer $id
 * @property string $tgl_statistik
 * @property string $bopd
 * @property string $mscfd
 * @property string $bwpd
 * @property string $image
 * @property string $date_input
 * @property integer $status
 * @property integer $sorts
 */
class StatistikList extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return StatistikList the static model class
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
		return 'tb_statistik_list';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('tgl_statistik', 'required'),
			array('status, sorts', 'numerical', 'integerOnly'=>true),
			array('tgl_statistik, bopd, mscfd, bwpd', 'length', 'max'=>225),
			array('date_input, image', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, tgl_statistik, bopd, mscfd, bwpd, image, date_input, status, sorts', 'safe', 'on'=>'search'),
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
			'tgl_statistik' => 'Tgl Statistik',
			'bopd' => 'Bopd',
			'mscfd' => 'Mscfd',
			'bwpd' => 'Bwpd',
			'image' => 'Image',
			'date_input' => 'Date Input',
			'status' => 'Status',
			'sorts' => 'Sorts',
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
		$criteria->compare('tgl_statistik',$this->tgl_statistik,true);
		$criteria->compare('bopd',$this->bopd,true);
		$criteria->compare('mscfd',$this->mscfd,true);
		$criteria->compare('bwpd',$this->bwpd,true);
		$criteria->compare('image',$this->image,true);
		$criteria->compare('date_input',$this->date_input,true);
		$criteria->compare('status',$this->status);
		$criteria->compare('sorts',$this->sorts);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}