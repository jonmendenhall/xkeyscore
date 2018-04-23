.class public final enum Lcom/amazonaws/util/IOUtils;
.super Ljava/lang/Enum;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/util/IOUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/IOUtils;

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final logger:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    new-array v0, v0, [Lcom/amazonaws/util/IOUtils;

    sput-object v0, Lcom/amazonaws/util/IOUtils;->$VALUES:[Lcom/amazonaws/util/IOUtils;

    .line 34
    const-class v0, Lcom/amazonaws/util/IOUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/IOUtils;->logger:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 76
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    sget-object p1, Lcom/amazonaws/util/IOUtils;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    sget-object p1, Lcom/amazonaws/util/IOUtils;->logger:Lorg/apache/commons/logging/Log;

    const-string v0, "Ignore failure in closing the Closeable"

    invoke-interface {p1, v0, p0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 117
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 120
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    const/4 v4, 0x0

    .line 121
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static release(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lorg/apache/commons/logging/Log;)V

    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    .line 46
    :try_start_0
    new-array v1, v1, [B

    .line 48
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw p0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/amazonaws/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/IOUtils;
    .locals 1

    .line 30
    const-class v0, Lcom/amazonaws/util/IOUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/util/IOUtils;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/util/IOUtils;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazonaws/util/IOUtils;->$VALUES:[Lcom/amazonaws/util/IOUtils;

    invoke-virtual {v0}, [Lcom/amazonaws/util/IOUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/IOUtils;

    return-object v0
.end method
