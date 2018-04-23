.class public final enum Lcom/amazonaws/util/ClassLoaderHelper;
.super Ljava/lang/Enum;
.source "ClassLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/util/ClassLoaderHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/ClassLoaderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [Lcom/amazonaws/util/ClassLoaderHelper;

    sput-object v0, Lcom/amazonaws/util/ClassLoaderHelper;->$VALUES:[Lcom/amazonaws/util/ClassLoaderHelper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static varargs getResource(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/net/URL;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 65
    invoke-static {p0, p2}, Lcom/amazonaws/util/ClassLoaderHelper;->getResourceViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_1

    .line 67
    invoke-static {p0}, Lcom/amazonaws/util/ClassLoaderHelper;->getResourceViaContext(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/amazonaws/util/ClassLoaderHelper;->getResourceViaContext(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_1

    .line 72
    invoke-static {p0, p2}, Lcom/amazonaws/util/ClassLoaderHelper;->getResourceViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/net/URL;

    move-result-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 75
    const-class p1, Lcom/amazonaws/util/ClassLoaderHelper;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public static varargs getResource(Ljava/lang/String;[Ljava/lang/Class;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0, p1}, Lcom/amazonaws/util/ClassLoaderHelper;->getResource(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getResourceAsStream(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 209
    invoke-static {p0, p1, p2}, Lcom/amazonaws/util/ClassLoaderHelper;->getResource(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/net/URL;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object p1

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static varargs getResourceAsStream(Ljava/lang/String;[Ljava/lang/Class;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-static {p0, v0, p1}, Lcom/amazonaws/util/ClassLoaderHelper;->getResourceAsStream(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static getResourceViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 81
    invoke-virtual {v2, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getResourceViaContext(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static varargs loadClass(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 158
    invoke-static {p0, p2}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClassViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_1

    .line 160
    invoke-static {p0}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClassViaContext(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClassViaContext(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_1

    .line 165
    invoke-static {p0, p2}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClassViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 168
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public static varargs loadClass(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 132
    invoke-static {p0, v0, p1}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClass(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static loadClassViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 96
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadClassViaContext(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    goto :goto_0

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/ClassLoaderHelper;
    .locals 1

    .line 25
    const-class v0, Lcom/amazonaws/util/ClassLoaderHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/util/ClassLoaderHelper;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/util/ClassLoaderHelper;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazonaws/util/ClassLoaderHelper;->$VALUES:[Lcom/amazonaws/util/ClassLoaderHelper;

    invoke-virtual {v0}, [Lcom/amazonaws/util/ClassLoaderHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/ClassLoaderHelper;

    return-object v0
.end method
