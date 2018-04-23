.class Lcom/instacart/library/truetime/TrueLog;
.super Ljava/lang/Object;
.source "TrueLog.java"


# static fields
.field private static LOGGING_ENABLED:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    sget-boolean v0, Lcom/instacart/library/truetime/TrueLog;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/instacart/library/truetime/TrueLog;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 46
    sget-boolean v0, Lcom/instacart/library/truetime/TrueLog;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    sget-boolean v0, Lcom/instacart/library/truetime/TrueLog;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static setLoggingEnabled(Z)V
    .locals 0

    .line 64
    sput-boolean p0, Lcom/instacart/library/truetime/TrueLog;->LOGGING_ENABLED:Z

    return-void
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/instacart/library/truetime/TrueLog;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    sget-boolean v0, Lcom/instacart/library/truetime/TrueLog;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/instacart/library/truetime/TrueLog;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    sget-boolean v0, Lcom/instacart/library/truetime/TrueLog;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 58
    sget-boolean v0, Lcom/instacart/library/truetime/TrueLog;->LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
