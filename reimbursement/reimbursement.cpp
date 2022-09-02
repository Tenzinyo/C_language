#include "reimbursement.hpp"

int Reimbursement::count = 1;

Reimbursement::Reimbursement(float val) {
  id = count++;
  setAmount(val);
}

float Reimbursement::getAmount()  const { return amount; }
int Reimbursement::getId() const { return id; }
void Reimbursement::setAmount(float val) { amount = val; }

std::ostream& operator<<(std::ostream& os, const Reimbursement& r) {
  os << "Reimbursement (id#" << r.getId() << "): $" << r.getAmount() << std::endl;
  return os;
}
