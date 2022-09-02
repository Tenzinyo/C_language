#include <iostream>

class Reimbursement {
 private:
  static int count;
  int id;
  float amount;
 public:
  Reimbursement(float val);
  float getAmount() const;
  int getId() const;
  void setAmount(float val);
};


std::ostream& operator<<(std::ostream&, const Reimbursement&);

