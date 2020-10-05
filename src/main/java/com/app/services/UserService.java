package com.app.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.app.model.User;
import com.app.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	private final UserRepository userRepository;
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}
	
	public void saveMyUser(User user) {
		userRepository.save(user);
	}
	public User loginUser(User user){
		User tmp = this.userRepository.findByUsername(user.getUserid(), user.getPassword());
	    if (tmp == null) {
	      throw new RuntimeException("user not found");
	    }
	    User userDTO = new User();
	    userDTO.setId(tmp.getId());
	    userDTO.setUserid(tmp.getUserid());
	    userDTO.setPassword(tmp.getPassword());
	    userDTO.setEmail(tmp.getEmail());
	    System.out.print(userDTO.toString());
//	    User.setRoles(tmp.getRoles().stream().map(role-> role.getName()).collect(Collectors.toList()));
	    
	    return userDTO;
	}
}
