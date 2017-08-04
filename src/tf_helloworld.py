import tensorflow as tf


def tf_hello():
    hello = tf.constant('Hello, TensorFlow!')
    sess = tf.Session()
    print sess.run(hello)

if __name__ == "__main__":
    tf_hello()
