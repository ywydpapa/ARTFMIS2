package kr.ghtech.artfms.cont.dto;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class ContDTO {
	private Integer CONTRACT_ID;
	private Integer SETTLECONT_ID;
	private String INS_DATE;
	private int CONSULT_ID;
	private String START_DATE;
	private String END_DATE;
	private String CONTRACT_DAYS;
	private String SANGJO;
	private String DPERSON_NAME;
	private String DPERSON_MW;
	private String DPERSON_AGE;
	private String DPERSON_JMNO;
	private String DPERSON_POSTNO;
	private String DPERSON_ADDR1;
	private String DPERSON_ADDR2;
	private String DPERSON_ORI_NAME;
	private String REGION;
	private String REGION_NAME;
	private String DDATE;
	private String DTIME;
	private String DPLACE;
	private Integer roomID;
	private String DTYPE;
	private String CREMATION_YN;
	private String SANGJU_NAME;
	private String SANGJU_JMNO;
	private String SANGJU_POSTNO;
	private String SANGJU_ADDR1;
	private String SANGJU_ADDR2;
	private String RELATION;
	private String RELATION_TITLE;
	private String SANGJU_TEL;
	private String ANCHI_REALDATE;
	private String ANCHI_REALTIME;
	private String ANCHI_DATE;
	private String ANCHI_TIME;
	private String COFFIN_DATE;
	private String COFFIN_TIME;
	private String DEPART_DATE;
	private String DEPART_TIME;
	private String JANGJI;
	private String REMARK;
	private String REST_INIT_ORD_REMARK;
	private String GOOD_TYPE;
	private String FNRGOODS_TYPE;
	private String TRAD_YN;
	private String OCCU_YN;
	private String CONSULTANT_ID;
	private String REG_DATE;
	private String REG_USER;
	private String INS_TIME;
	private String MOD_USERID;
	private Integer FROOM_ID;
	private String FROOM_TITLE;
	private String BCD_ID;
	private String BCD_TITLE;
	private String GOODS_TITLE;
	private String GOODS_SPEC;
	private String GOODS_UNIT;
	private String GOODS_UNIT_QTY;
	private String GOODS_SALE_UNIT;
	private String GOODS_SALE_PRICE;
	private String GOODS_MODERN;
	private String GOODS_RETURN_YN;
	private String GOODS_REFG_YN;
	private String GOODS_INIT_ORDER;
	private String GOODS_INIT_BASIC;
	private String GOODS_ADD_SALE;
	private String GOODS_3RDPTY_YN;
	private String GOODS_SALE_TYP;
	private String GOODS_REMARK;
	private String GOODS_ORDER;
	private String GOODS_USE_YN;
	private String GOODS_REG_DEPT;
	private String GOODS_REG_DATETIME;
	private String GOODS_MOD_USER;
	private String GOODS_MOD_DATETIME;
	private String GOODS_FROOM_ORDER;
	private String CAT_01_TITLE;
	private String CAT_02_TITLE;
	private String CAT_03_TITLE;
	private String FROOM_CAT;
	private String FROOM_TYP;
	private String FROOM_DAY_PRICE;
	private String FROOM_TIME_PRICE;
	private String FROOM_MAX_PERS;
	private String FROOM_AREA;
	private String FROOM_AREA_KOR;
	private String FROOM_REMARK;
	private String CONT_ID;
	private String FROOM_RENT_FR;
	private String FROOM_RENT_TO;
	private String FROOM_CHK_INOUT;
	private String FROOM_PASSWD;
	private String FROOM_TML_CODE;
	private String FROOM_ALIS;
	private String FROOM_USE_YN;
	private String FROOM_REG_USER;
	private String FROOM_REG_DATETIME;
	private String FROOM_MOD_USER;
	private String FROOM_MOD_DATETIME;	
	private String FROOM_PC;
	private String FROOM_ORDNO;
	private String FROOM_IMAGE;
	private String IMSI_YN;
	private String CAT_ID;
	private String CAT_TITLE;
	private String CLEAN_CHARGE;
	private String GOODS_NET_PRICE;
	private String GOODS_INT_QTY;
	private String ALTAR_ID;
	private String ALTAR_TITLE;
	private String ALTAR_CAT;
	private String ALTAR_AMOUNT;
	private String ALTAR_REMARK;
	private String ALTAR_IMAGE;
	private String ALTAR_ORDER;
	private String ALTAR_USE_YN;
	private String ALTAR_QTY;
	private String ALTAR_NET_PRICE;
	private String FTABLE_ID;
	private String FTABLE_TITLE;
	private String FTABLE_CAT;
	private String FTABLE_AMOUNT;
	private String FTABLE_REMARK;
	private String FTABLE_IMAGE;
	private String FTABLE_ORDER;
	private String FTABLE_USE_YN;
	private String FTABLE_NET_PRICE;
	private String FTABLE_QTY;
	private String FTABLE_UNIT;
	private String FNRS_ORD_ID;
	private String FNRS_ORD_FROOM_ID;
	private String FNRS_GOODS_ID;
	private String FNRS_GOODS_SALE_UNIT;
	private String FNRS_GOODS_SALE_PRICE;
	private String FNRS_GOODS_UNIT_QTY;
	private String FNRS_GOODS_UNIT;
	private String FNRS_GOODS_NET_PRICE;
	private String FNRS_GOODS_INIT_QTY;
	private String FNRS_GOODS_ADD_QTY;
	private String MESSR_ORD_ID;
	private String MESSR_ORD_FROOM_ID;
	private String MESSR_GOODS_ID;
	private String MESSR_GOODS_SALE_UNIT;
	private String MESSR_GOODS_SALE_PRICE;
	private String MESSR_GOODS_UNIT_QTY;
	private String MESSR_GOODS_UNIT;
	private String MESSR_GOODS_NET_PRICE;
	private String MESSR_GOODS_INIT_QTY;
	private String MESSR_GOODS_ADD_QTY;
	private String STORE_ORD_ID;
	private String STORE_ORD_FROOM_ID;
	private String STORE_GOODS_ID;
	private String STORE_GOODS_SALE_UNIT;
	private String STORE_GOODS_SALE_PRICE;
	private String STORE_GOODS_UNIT_QTY;
	private String STORE_GOODS_UNIT;
	private String STORE_GOODS_NET_PRICE;
	private String STORE_GOODS_INIT_QTY;
	private String STORE_GOODS_ADD_QTY;
	private int CONT_FROOM_ID;
	private int AFFROOM_ID;
	private int BFFROOM_ID;
	private String GOODS_ID;
	private int SETL_ID;
	private String SETL_FROOM_ID;
	private String SETL_TITLE;
	private String SETL_REMARK;
	private String SETL_USE_YN;
	private String ROOM_TITLE;
	private String FTABLE_CODE;
	private String QUTY;
	private String ORD_AMOUNT;
	private String ORD_REMARK;
	private String ORD_DATE;
	private String ORD_TIME;
	private String NET_PRICE;
	private String ORD_PRICE;
	private String GOODS_CODE;
	private String ORD_TYPE;
	private String SALES_UNIT;
	private String UNIT_PRICE;
	private String UNIT_QUTY;
	private String UNIT_QUTY_UNIT;
	private String ORD_QUTY;
	private String SANGJU_YN;
	private String CANC_YN;
	private String PARTNER_YN;
	private String CONF_DATE;
	private String CONF_TIME;
	private String CANC_DATE;
	private String CANC_TIME;
	private String ROOM_TRANS_OPT;
	private String SALES_PRICE;
	private String UNIT_PERQUTY;
	private String CONF_YN;
	private String SPEC;
	private String ADD_AMOUNT;
	private String QUTY_PERUNIT;
	private String NOWDATE;
	private String SETT_DATE;
	private Integer CONT_SANGJU_ID;
	private String RELATION_CODE;
	private String SANGJU_NAMEs;
	private Integer DAYS;
	private Integer TIMES;
	private String RCHARGE;
	private String CHKED;
	private String CAT_02_ID;
	private String SETYN;
	private String inRoom;
	private String STDATE;
	private String EDDATE;
	private Integer RENT_ID;
	private String RENT_TITLE;
	private Integer RENT_TYPE;
	private String RENT_NAME;
	private Integer CHARGE_TYPE;
	private Integer CHARGE_YN;
	private Long CHARGE_PERDAY;
	private Long CHARGE_PERHOUR;
	private Integer RENT_DAYS;
	private Integer RENT_HOURS;
	private Long RENT_AMOUNT;
	private String STORE_SNACK_YN;
	private String STORE_REFG_YN;
	private String STORE_ITEM_YN;
	private String CLEAN_CHARGE_DAYS;
	private String ADD_YN;
	private String attrib;
	private String SETL_PRICE;
	private String SETL_TYPE;
	private String PAY_YN;
	private String INCADD_YN;
	private String TEMP_ROOM;
	private String BFDAYS;
	private String AFDAYS;
	private String BFCHARGE;
	private String AFCHARGE;
	private Integer RET_QUTY;
	private Integer STORE_SETT_ID;
	private BigDecimal INIT_AMOUNT;
	private BigDecimal RET_AMOUNT;
	private BigDecimal STORE_AMOUNT;
	private BigDecimal DISCOUNT;
	private BigDecimal TOTAL_AMOUNT;
	private Integer SETTLEDISC_ID;
	private String DISC_POSITION;
	private BigDecimal DISC_AMOUNT;
	private String DISC_DESC;
	private int DISC_TYPE;
	private BigDecimal INT_AMOUNT;
	private BigDecimal EXT_AMOUNT;
	private BigDecimal SETT_AMOUNT;
	private String INC_DATE;
	private BigDecimal INC_CASH;
	private BigDecimal INC_CARD;
	private int CASHBILL_YN;
	private String CASHBILL_TELNO;
	private String PIC_ID;
}
