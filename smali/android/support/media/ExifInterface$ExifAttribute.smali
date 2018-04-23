.class Landroid/support/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method private constructor <init>(II[B)V
    .locals 0

    .line 2935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2936
    iput p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    .line 2937
    iput p2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 2938
    iput-object p3, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>(II[BLandroid/support/media/ExifInterface$1;)V
    .locals 0

    .line 2930
    invoke-direct {p0, p1, p2, p3}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 0

    .line 2930
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createByte(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 5

    .line 2985
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_0

    .line 2986
    new-array v2, v1, [B

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, v2, v0

    .line 2987
    new-instance p0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v0, v2

    invoke-direct {p0, v1, v0, v2}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p0

    .line 2989
    :cond_0
    invoke-static {}, Landroid/support/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2990
    new-instance v0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 3039
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/support/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 5

    .line 3029
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3031
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3032
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    .line 3033
    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3035
    :cond_0
    new-instance p1, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 2980
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 4

    .line 2970
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2972
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2973
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    .line 2974
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2976
    :cond_0
    new-instance p1, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createSRational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 3025
    new-array v0, v0, [Landroid/support/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createSRational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createSRational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 6

    .line 3014
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3016
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3017
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    .line 3018
    iget-wide v4, v3, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3019
    iget-wide v3, v3, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3021
    :cond_0
    new-instance p1, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 3

    .line 2994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/support/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2995
    new-instance v0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 2966
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 5

    .line 2956
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2958
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2959
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    long-to-int v3, v3

    .line 2960
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2962
    :cond_0
    new-instance p1, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createURational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 3010
    new-array v0, v0, [Landroid/support/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createURational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 6

    .line 2999
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3001
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3002
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    .line 3003
    iget-wide v4, v3, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3004
    iget-wide v3, v3, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3006
    :cond_0
    new-instance p1, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    .line 2952
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 4

    .line 2942
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2944
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2945
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    int-to-short v3, v3

    .line 2946
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2948
    :cond_0
    new-instance p1, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    .line 3050
    :try_start_0
    new-instance v1, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3051
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3052
    iget p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    if-eqz v1, :cond_1a

    .line 3161
    :try_start_2
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto/16 :goto_18

    .line 3146
    :pswitch_0
    :try_start_3
    iget p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 3147
    :goto_0
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_0

    .line 3148
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v4

    aput-wide v4, p1, v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 3161
    :try_start_4
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object p1

    .line 3139
    :pswitch_1
    :try_start_5
    iget p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 3140
    :goto_2
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_2

    .line 3141
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v2

    float-to-double v4, v2

    aput-wide v4, p1, v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 3161
    :try_start_6
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    return-object p1

    .line 3130
    :pswitch_2
    :try_start_7
    iget p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Landroid/support/media/ExifInterface$Rational;

    .line 3131
    :goto_4
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_4

    .line 3132
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v5, v2

    .line 3133
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v7, v2

    .line 3134
    new-instance v2, Landroid/support/media/ExifInterface$Rational;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/media/ExifInterface$Rational;-><init>(JJLandroid/support/media/ExifInterface$1;)V

    aput-object v2, p1, v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    .line 3161
    :try_start_8
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    return-object p1

    .line 3123
    :pswitch_3
    :try_start_9
    iget p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 3124
    :goto_6
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_6

    .line 3125
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    aput v2, p1, v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    if-eqz v1, :cond_7

    .line 3161
    :try_start_a
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_7
    return-object p1

    .line 3116
    :pswitch_4
    :try_start_b
    iget p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 3117
    :goto_8
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_8

    .line 3118
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    aput v2, p1, v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    if-eqz v1, :cond_9

    .line 3161
    :try_start_c
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_9
    return-object p1

    .line 3107
    :pswitch_5
    :try_start_d
    iget p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Landroid/support/media/ExifInterface$Rational;

    .line 3108
    :goto_a
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_a

    .line 3109
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v5

    .line 3110
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v7

    .line 3111
    new-instance v2, Landroid/support/media/ExifInterface$Rational;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/media/ExifInterface$Rational;-><init>(JJLandroid/support/media/ExifInterface$1;)V

    aput-object v2, p1, v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_a
    if-eqz v1, :cond_b

    .line 3161
    :try_start_e
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_b
    return-object p1

    .line 3100
    :pswitch_6
    :try_start_f
    iget p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [J

    .line 3101
    :goto_c
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_c

    .line 3102
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    aput-wide v4, p1, v3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_c
    if-eqz v1, :cond_d

    .line 3161
    :try_start_10
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_d
    return-object p1

    .line 3093
    :pswitch_7
    :try_start_11
    iget p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 3094
    :goto_e
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_e

    .line 3095
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v2

    aput v2, p1, v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_e
    if-eqz v1, :cond_f

    .line 3161
    :try_start_12
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_f

    :catch_7
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_f
    return-object p1

    .line 3064
    :pswitch_8
    :try_start_13
    iget p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v4

    array-length v4, v4

    if-lt p1, v4, :cond_12

    move p1, v3

    .line 3066
    :goto_10
    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v4

    array-length v4, v4

    if-ge p1, v4, :cond_11

    .line 3067
    iget-object v4, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v4, v4, p1

    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v5

    aget-byte v5, v5, p1

    if-eq v4, v5, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_11
    :goto_11
    if-eqz v2, :cond_12

    .line 3073
    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object p1

    array-length v3, p1

    .line 3077
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3078
    :goto_12
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_15

    .line 3079
    iget-object v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v2, v2, v3

    if-nez v2, :cond_13

    goto :goto_14

    :cond_13
    const/16 v4, 0x20

    if-lt v2, v4, :cond_14

    int-to-char v2, v2

    .line 3084
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_14
    const/16 v2, 0x3f

    .line 3086
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3090
    :cond_15
    :goto_14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v1, :cond_16

    .line 3161
    :try_start_14
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_15

    :catch_8
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_15
    return-object p1

    .line 3056
    :pswitch_9
    :try_start_15
    iget-object p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length p1, p1

    if-ne p1, v2, :cond_18

    iget-object p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte p1, p1, v3

    if-ltz p1, :cond_18

    iget-object p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte p1, p1, v3

    if-gt p1, v2, :cond_18

    .line 3057
    new-instance p1, Ljava/lang/String;

    new-array v2, v2, [C

    iget-object v4, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v4, v4, v3

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v2, v3

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v1, :cond_17

    .line 3161
    :try_start_16
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_16

    :catch_9
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_16
    return-object p1

    .line 3059
    :cond_18
    :try_start_17
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Landroid/support/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v1, :cond_19

    .line 3161
    :try_start_18
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    goto :goto_17

    :catch_a
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_17
    return-object p1

    :catch_b
    move-exception p1

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_18
    return-object v0

    :catch_c
    move-exception p1

    goto :goto_19

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_1b

    :catch_d
    move-exception p1

    move-object v1, v0

    :goto_19
    :try_start_19
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred during reading a value"

    .line 3156
    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-eqz v1, :cond_1b

    .line 3161
    :try_start_1a
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    goto :goto_1a

    :catch_e
    move-exception p1

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    :goto_1a
    return-object v0

    :catchall_1
    move-exception p1

    :goto_1b
    if-eqz v1, :cond_1c

    .line 3161
    :try_start_1b
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f

    goto :goto_1c

    :catch_f
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    .line 3163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3164
    :cond_1c
    :goto_1c
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 3

    .line 3170
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3172
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3174
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3175
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 3177
    :cond_1
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 3178
    check-cast p1, [J

    .line 3179
    array-length v0, p1

    if-ne v0, v2, :cond_2

    .line 3180
    aget-wide v0, p1, v1

    long-to-double v0, v0

    return-wide v0

    .line 3182
    :cond_2
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "There are more than one component"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3184
    :cond_3
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    .line 3185
    check-cast p1, [I

    .line 3186
    array-length v0, p1

    if-ne v0, v2, :cond_4

    .line 3187
    aget p1, p1, v1

    int-to-double v0, p1

    return-wide v0

    .line 3189
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "There are more than one component"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3191
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 3192
    check-cast p1, [D

    .line 3193
    array-length v0, p1

    if-ne v0, v2, :cond_6

    .line 3194
    aget-wide v0, p1, v1

    return-wide v0

    .line 3196
    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "There are more than one component"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3198
    :cond_7
    instance-of v0, p1, [Landroid/support/media/ExifInterface$Rational;

    if-eqz v0, :cond_9

    .line 3199
    check-cast p1, [Landroid/support/media/ExifInterface$Rational;

    .line 3200
    array-length v0, p1

    if-ne v0, v2, :cond_8

    .line 3201
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/support/media/ExifInterface$Rational;->calculate()D

    move-result-wide v0

    return-wide v0

    .line 3203
    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "There are more than one component"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3205
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 3

    .line 3209
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3211
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3213
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3214
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3216
    :cond_1
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 3217
    check-cast p1, [J

    .line 3218
    array-length v0, p1

    if-ne v0, v2, :cond_2

    .line 3219
    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    .line 3221
    :cond_2
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "There are more than one component"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3223
    :cond_3
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    .line 3224
    check-cast p1, [I

    .line 3225
    array-length v0, p1

    if-ne v0, v2, :cond_4

    .line 3226
    aget p1, p1, v1

    return p1

    .line 3228
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "There are more than one component"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3230
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6

    .line 3234
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3238
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3239
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3242
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3243
    instance-of v2, p1, [J

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 3244
    check-cast p1, [J

    .line 3245
    :cond_2
    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_3

    .line 3246
    aget-wide v4, p1, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 3247
    array-length v0, p1

    if-eq v3, v0, :cond_2

    const-string v0, ","

    .line 3248
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3251
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3253
    :cond_4
    instance-of v2, p1, [I

    if-eqz v2, :cond_7

    .line 3254
    check-cast p1, [I

    .line 3255
    :cond_5
    :goto_1
    array-length v0, p1

    if-ge v3, v0, :cond_6

    .line 3256
    aget v0, p1, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 3257
    array-length v0, p1

    if-eq v3, v0, :cond_5

    const-string v0, ","

    .line 3258
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3261
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3263
    :cond_7
    instance-of v2, p1, [D

    if-eqz v2, :cond_a

    .line 3264
    check-cast p1, [D

    .line 3265
    :cond_8
    :goto_2
    array-length v0, p1

    if-ge v3, v0, :cond_9

    .line 3266
    aget-wide v4, p1, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 3267
    array-length v0, p1

    if-eq v3, v0, :cond_8

    const-string v0, ","

    .line 3268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3271
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3273
    :cond_a
    instance-of v2, p1, [Landroid/support/media/ExifInterface$Rational;

    if-eqz v2, :cond_d

    .line 3274
    check-cast p1, [Landroid/support/media/ExifInterface$Rational;

    .line 3275
    :cond_b
    :goto_3
    array-length v0, p1

    if-ge v3, v0, :cond_c

    .line 3276
    aget-object v0, p1, v3

    iget-wide v4, v0, Landroid/support/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 3277
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3278
    aget-object v0, p1, v3

    iget-wide v4, v0, Landroid/support/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 3279
    array-length v0, p1

    if-eq v3, v0, :cond_b

    const-string v0, ","

    .line 3280
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3283
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v0
.end method

.method public size()I
    .locals 2

    .line 3289
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
