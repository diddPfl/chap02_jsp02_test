package com.javalab.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/******************************************
 * 영화 자바 빈즈(도메인 클래스)
 * @author 홍길동
 * 2024.06.11
 * 영화정보를 저장하는 자바빈즈
 * - 롬복 에노테이션으로 간단하게 구현
 * - 자바 빈즈의 직렬화시 안정성 확보차원에서 Serializable 구현
 *****************************************/

// 롬복 애노테이션 - 메타데이터
@NoArgsConstructor // 기본생성자
@AllArgsConstructor // 오버로딩 생성자
@Getter // 게터메소드
@Setter // 세터 메소드
@ToString // ToString() 메소드


public class Movie implements Serializable {
	
	/**
	 * 직렬화(serialVersionUID)
	 * - 자바 객체를 바이트 스트림 형태로 만들어서 전송
	 * 받는 쪽에서는 역질렬화를 해서 받아야 한다.
	 * 역질렬화는 문자열 형태로 만들어진 문자열을 자바 객체로 실제 자바 객체로 완성할 떄 처음 만들어진 자바 객체와 역질렬화 되어
	 * 다시 재조룁된 자바 객체(자바 빈즈)가 같은지 확인하기 위해서 다음과 같은 serialVersionUID가 필요하다.
	 */
	private static final long serialVersionUID = 1L;
	private String title; // 영화 제목
	private String director; // 영화 감독
	private int releaseYear; // 개봉 일자
	
}
