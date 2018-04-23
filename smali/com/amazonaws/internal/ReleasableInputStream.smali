.class public Lcom/amazonaws/internal/ReleasableInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "ReleasableInputStream.java"

# interfaces
.implements Lcom/amazonaws/internal/Releasable;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private closeDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/amazonaws/internal/ReleasableInputStream;

    .line 42
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/ReleasableInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private doRelease()V
    .locals 3

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    sget-object v1, Lcom/amazonaws/internal/ReleasableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/amazonaws/internal/ReleasableInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "FYI"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/amazonaws/internal/Releasable;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/amazonaws/internal/Releasable;

    .line 93
    invoke-interface {v0}, Lcom/amazonaws/internal/Releasable;->release()V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/internal/ReleasableInputStream;->abortIfNeeded()V

    return-void
.end method

.method public static wrap(Ljava/io/InputStream;)Lcom/amazonaws/internal/ReleasableInputStream;
    .locals 1

    .line 126
    instance-of v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;

    if-eqz v0, :cond_0

    .line 128
    check-cast p0, Lcom/amazonaws/internal/ReleasableInputStream;

    return-object p0

    .line 130
    :cond_0
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 131
    check-cast p0, Ljava/io/FileInputStream;

    invoke-static {p0}, Lcom/amazonaws/internal/ResettableInputStream;->newResettableInputStream(Ljava/io/FileInputStream;)Lcom/amazonaws/internal/ResettableInputStream;

    move-result-object p0

    return-object p0

    .line 133
    :cond_1
    new-instance v0, Lcom/amazonaws/internal/ReleasableInputStream;

    invoke-direct {v0, p0}, Lcom/amazonaws/internal/ReleasableInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->closeDisabled:Z

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/amazonaws/internal/ReleasableInputStream;->doRelease()V

    :cond_0
    return-void
.end method

.method public final disableClose()Lcom/amazonaws/internal/ReleasableInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/internal/ReleasableInputStream;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->closeDisabled:Z

    return-object p0
.end method

.method public final isCloseDisabled()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->closeDisabled:Z

    return v0
.end method

.method public final release()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazonaws/internal/ReleasableInputStream;->doRelease()V

    return-void
.end method
