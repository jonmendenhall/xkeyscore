.class public Lcom/intermedia/util/reporting/ErrorLog;
.super Ljava/lang/Object;
.source "ErrorLog.java"


# instance fields
.field private keyValues:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private throwable:Ljava/lang/Throwable;

.field private username:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intermedia/util/reporting/ErrorLog;->keyValues:Ljava/util/Map;

    .line 16
    iput-object p1, p0, Lcom/intermedia/util/reporting/ErrorLog;->username:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/intermedia/util/reporting/ErrorLog;->keyValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method getKeyValues()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/intermedia/util/reporting/ErrorLog;->keyValues:Ljava/util/Map;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/intermedia/util/reporting/ErrorLog;->throwable:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/intermedia/util/Asserts;->isNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/intermedia/util/reporting/ErrorLog;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/intermedia/util/reporting/ErrorLog;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/intermedia/util/reporting/ErrorLog;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method
