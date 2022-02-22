require 'stripe'
Rails.configuration.stripe = {
  :publishable_key =>'pk_test_51JudGbDVV506kMxu3tzVOsB0y4wDwTmtZGsDxJaPoMxsI6Se9JM6ogUze1fszDOPGFlyUr4Jege5UU2wPK2rCDq900cHzYBPcp',
  :secret_key    =>'sk_test_51JudGbDVV506kMxuXpW0YzR5l3JQEWAYpid9axjFvgaUgdWk0rl7LfcWuEgh8GftRy6mqL5Tf93IOiDoWNoK3PnJ00HOGiUHuW'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
