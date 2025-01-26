package lk.ijse.ecomerce.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Data

public class UserDTO {
    private int user_id;
    private String user_name;
    private String password;
    private String email;
   private String is_admin;
    private int active;
}
