from rest_framework import serializers
from .models import Serie, Token
from django.contrib.auth.models import User


class UserSerializer(serializers.ModelSerializer):
    # snippets = serializers.PrimaryKeyRelatedField(many=True, queryset=Snippet.objects.all())

    class Meta:
        model = User
        fields = ['id', 'username', 'snippets']


class TokenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Token
        fields = '__all__'


class TokenUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Token
        fields = [
            'token_id',
            'status'
        ]


class CollectionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Token
        fields = [
            'collection_id',
            'col_title',
            'col_description',
            'col_slug',
            'col_image'
        ]


class CollectionAddSerializer(serializers.ModelSerializer):
    collection_id = serializers.IntegerField(style={'input_type':'hidden'})
    # col_title = serializers.CharField(write_only=True)
    # col_description = serializers.CharField(write_only=True)
    # col_slug = serializers.CharField(write_only=True)
    like = serializers.IntegerField(style={'input_type':'hidden'})

    class Meta:
        model = Token
        fields = [
            'collection_id',
            'col_title',
            'col_slug',
            'col_description',
            'col_image',
            'like'
        ]


class UserSerializers(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('email', 'password')
