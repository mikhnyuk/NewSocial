export const signup = (user, success, error) => {
  $.ajax({
    method: "POST",
    url: "/api/user",
    data: { user: {name: user.name, email: user.email, password: user.password} },
    success,
    error
    }
  );
};

export const logout = (success) => {
  $.ajax({
    method: "DELETE",
    url: "/api/session",
    success
    }
  );
};

export const login = (user, success, error) => {
  $.ajax({
    method: "POST",
    url: "/api/session",
    data: { user: {name: user.name, email: user.email, password: user.password} },
    success,
    error
    }
  );
};
