package kr.ac.hansung.model;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class ClassInfo {

	private int cno;


	@NotNull(message="This section must not be empty")
	private int year;
	
	@NotNull(message="This section must not be empty")
	private int semester;
	
	@Size(min=2, max=100, message="Name must be between 2 and 100 chars")
	@NotEmpty(message="This section must not be empty")
	private String name;
	
	@Size(min=2, max=100, message="Type must be between 2 and 100 chars")
	@NotEmpty(message="This section must not be empty")
	private String classfication;
	
	@Size(min=2, max=100, message="Professor must be between 2 and 100 chars")
	@NotEmpty(message="This section must not be empty")
	private String prof;

	@NotNull(message="This section must not be empty")
	private int amount;

}
