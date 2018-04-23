.class public Lcom/intermedia/util/Asserts;
.super Ljava/lang/Object;
.source "Asserts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)Z
    .locals 0

    if-nez p0, :cond_0

    .line 16
    invoke-static {}, Lcom/intermedia/util/Asserts;->fail()V

    :cond_0
    return p0
.end method

.method private static fail()V
    .locals 4

    .line 22
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lcom/intermedia/util/Asserts;->shouldThrowOnAssertFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    throw v0

    .line 26
    :cond_0
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v1

    new-instance v2, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method public static isNonEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/intermedia/util/Asserts;->assertTrue(Z)Z

    return-object p0
.end method

.method public static isNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/intermedia/util/Asserts;->assertTrue(Z)Z

    return-object p0
.end method

.method public static shouldThrowOnAssertFailure()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
