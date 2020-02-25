from sklearn.externals import joblib

# load the joblib
test = joblib.load('model.joblib')

print("Hello World")
print("test model", test)
