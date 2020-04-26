apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: busybox-debug
  namespace: default
spec:
  replicas: 1
  selector:
    matchLabels:
      debug: busybox-debug
  template:
    metadata:
      name: busybox
      labels:
        debug: busybox-debug
    spec:
      containers:
      - image: busybox
        imagePullPolicy: IfNotPresent
        name: buxybox
        command:
        - sleep
        - "36000"
        volumeMounts:
        - mountPath: /tmp/pvc
          name: pvc
      volumes:
      - name: pvc
        persistentVolumeClaim:
          claimName: postgres-pvc

