package com.project.ssgso.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.ssgso.dao.SsgsoDaoImpl;
import com.project.ssgso.dto.AccomodationDto;
import com.project.ssgso.dto.CategoryDto;
import com.project.ssgso.dto.HashtagDto;
import com.project.ssgso.dto.RoomDto;

@Service
public class SsgsoServiceImpl implements ISsgsoService{
	@Autowired
	public SsgsoDaoImpl ssgsoDaoImpl;

	@Override
	public List<AccomodationDto> selectAccomodationAllList() {
		return ssgsoDaoImpl.selectAccomodationAllList();
	}

	@Override
	public AccomodationDto selectAccomodation(int ac_no) {
		return ssgsoDaoImpl.selectAccomodation(ac_no);
	}

	@Override
	public List<RoomDto> selectRoomAllList() {
		return ssgsoDaoImpl.selectRoomAllList();
	}
	

	@Override
	public List<CategoryDto> selectCategoryAllList() {
		return ssgsoDaoImpl.selectCategoryAllList();
	}
	

	@Override
	public void createAccomodation(HashMap<String, String> paramMap) {
		ssgsoDaoImpl.createAccomodation(paramMap);
	}

	@Override
	public String getKakaoApiFromAddress(String roadFullAddr) {
		String apiKey = "94c547820265ae0ce0a5f82974d74a77";
		String apiUrl = "https://dapi.kakao.com/v2/local/search/address.json";
		String jsonString = null;
		
		try {
			roadFullAddr = URLEncoder.encode(roadFullAddr, "UTF-8");
			
			String addr = apiUrl + "?query=" + roadFullAddr;
			
			URL url = new URL(addr);
			URLConnection conn = url.openConnection();
			conn.setRequestProperty("Authorization", "KakaoAK " + apiKey);
			
			BufferedReader rd = null;
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			StringBuffer docJson = new StringBuffer();
			
			String line;
			
			while ((line=rd.readLine()) != null) {
				docJson.append(line);
			}
			
			jsonString = docJson.toString();
			rd.close();
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return jsonString;
	}

	@Override
	public HashMap<String, String> getXYMapfromJson(String jsonString) {
		//System.out.println("getXYMapfromJson::");
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, String> XYMap = new HashMap<String, String>();
		
		try {
			TypeReference<Map<String, Object>> typeRef = new TypeReference<Map<String, Object>>(){};
			Map<String, Object> jsonMap = mapper.readValue(jsonString, typeRef);
			
			@SuppressWarnings("unchecked")
			List<Map<String, String>> docList =  (List<Map<String, String>>) jsonMap.get("documents");	
		
			Map<String, String> adList = (Map<String, String>) docList.get(0);
			XYMap.put("x",adList.get("x"));
			XYMap.put("y", adList.get("y"));
			
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return XYMap;
	}

	@Override
	public int getAcnoUsingName(String name) {
		return ssgsoDaoImpl.getAcnoUsingName(name);
	}

	@Override
	public List<AccomodationDto> selectAccListUsingCategory(String category) {
		// TODO Auto-generated method stub
		return ssgsoDaoImpl.selectAccListUsingCategory(category);
	}

	@Override
	public List<HashtagDto> selectHashListUsingAcno(int ac_no) {
		// TODO Auto-generated method stub
		return ssgsoDaoImpl.selectHashListUsingAcno(ac_no);
	}

}
