import React from 'react'

class PayTypeSelector extends React.Component {
    render () {
        return (
            <div className="field">
                <label htmlFor="order_pay_type">Pay Type</label>
                <select id="order_pay_type" name="order[pay_type]">
                    <option value="Check">Check</option>
                    <option value="Credit cart">Credit card</option>
                    <option value="Purcharse order">Purchase order</option>
                </select>

            </div>
        )
    }
}

export default PayTypeSelector