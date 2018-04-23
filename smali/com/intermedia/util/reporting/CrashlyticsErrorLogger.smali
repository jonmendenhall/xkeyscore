.class Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;
.super Ljava/lang/Object;
.source "CrashlyticsErrorLogger.java"

# interfaces
.implements Lcom/intermedia/util/reporting/ErrorLogger;


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "kk:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 17
    iget-object v0, p0, Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v1, "gmt"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public log(Lcom/intermedia/util/reporting/ErrorLog;)V
    .locals 4
    .param p1    # Lcom/intermedia/util/reporting/ErrorLog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/intermedia/util/reporting/ErrorLog;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserName(Ljava/lang/String;)V

    const-string v0, "===== NON FATAL EXCEPTION ====="

    .line 24
    invoke-direct {p0, v0}, Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;->log(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loggedAt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;->log(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/intermedia/util/reporting/ErrorLog;->getKeyValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "===== KEY VALUE PAIRS: ====="

    .line 28
    invoke-direct {p0, v0}, Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;->log(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/intermedia/util/reporting/ErrorLog;->getKeyValues()Ljava/util/Map;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "===== END OF KEY VALUE PAIRS ====="

    .line 33
    invoke-direct {p0, v0}, Lcom/intermedia/util/reporting/CrashlyticsErrorLogger;->log(Ljava/lang/String;)V

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/intermedia/util/reporting/ErrorLog;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
