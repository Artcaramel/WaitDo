package dao;

import java.util.List;

import dto.AddressDto;

public interface AddressDaoI {
	int addressAdd(AddressDto addressdto)throws Exception;
	int addressDelete(int mno)throws Exception;
	public List<AddressDto> selectAddress(String email) throws Exception; 
}
