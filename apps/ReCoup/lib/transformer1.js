const budgets = {{ getBudgets.data}};

const available = [];

function formatCurrency(amount) {
  return new Intl.NumberFormat('en-US', { 
    style: 'currency', 
    currency: 'USD' 
  }).format(amount);
}
for (let i = 0; i<budgets.limit.length; i++){
  let amount = budgets.limit[i]-budgets.spent[i];
  amount = amount<=0? 0: amount;
  available.push(formatCurrency(amount))
};



return available;