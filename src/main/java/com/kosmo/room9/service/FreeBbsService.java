package com.kosmo.room9.service;

import java.util.List;
import java.util.Map;

public interface FreeBbsService {
	//인터페이스 : 상수, 추상메소드
	//클래스에서는(dao,impl)에서는 이 인터페이스를 상속받아서 진짜 메소드를 구현해준다.
	
	//총 게시글 수
	int getCount(Map map);
	
	//게시글을 뿌리는 메소드 = 전체 보기
	List<FreeBbsDTO> selectList(Map map);
	
	//게시글 하나를 뿌리는 메소드 = 상세보기
	FreeBbsDTO selectOne(Map map);
	
	//작성
	int insert(Map map);
	
	//편집
	int update(Map map);
	
	//삭제	
	int delete(Map map);
}
