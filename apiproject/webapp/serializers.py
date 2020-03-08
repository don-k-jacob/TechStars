from rest_framework import serializers
from rest_framework import employees

class employeesSerializer(serializers.ModelSerializers):

    class Meta:
        model= employees
        fields= '__all__'