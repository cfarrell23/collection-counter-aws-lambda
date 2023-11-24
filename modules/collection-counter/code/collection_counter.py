def lambda_handler(event, context):
    numberOfItems = event['numOfItems']
    totalPrice = 0
    for i in range(numberOfItems):
        totalPrice += i*2
    message = 'Hello {}, your total is {} !'.format(event['name'], totalPrice)
    return {
        'statusCode': 200,
        'body': message
    }