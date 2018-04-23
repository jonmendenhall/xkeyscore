.class public final Lcom/intermedia/util/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u0007J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0006H\u0007J\u001a\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006H\u0007J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0004\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/intermedia/util/DateTimeUtils;",
        "",
        "()V",
        "formattedShowTime",
        "",
        "showTime",
        "Lorg/joda/time/DateTime;",
        "dateTimeZone",
        "Lorg/joda/time/DateTimeZone;",
        "isDateToday",
        "",
        "isDateTomorrow",
        "todayTime",
        "currentDateTime",
        "tomorrowDateTime",
        "utcFromISO8601String",
        "dateString",
        "app_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/intermedia/util/DateTimeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/intermedia/util/DateTimeUtils;

    invoke-direct {v0}, Lcom/intermedia/util/DateTimeUtils;-><init>()V

    sput-object v0, Lcom/intermedia/util/DateTimeUtils;->INSTANCE:Lcom/intermedia/util/DateTimeUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic formattedShowTime$default(Lcom/intermedia/util/DateTimeUtils;Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeZone;ZZILjava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 17
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p2

    const-string p6, "DateTimeZone.getDefault()"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p6, :cond_1

    .line 18
    invoke-static {p0, p1, v1, v0, v1}, Lcom/intermedia/util/DateTimeUtils;->isDateToday$default(Lcom/intermedia/util/DateTimeUtils;Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ILjava/lang/Object;)Z

    move-result p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    invoke-static {p0, p1, v1, v0, v1}, Lcom/intermedia/util/DateTimeUtils;->isDateTomorrow$default(Lcom/intermedia/util/DateTimeUtils;Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ILjava/lang/Object;)Z

    move-result p4

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/intermedia/util/DateTimeUtils;->formattedShowTime(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeZone;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic isDateToday$default(Lcom/intermedia/util/DateTimeUtils;Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ILjava/lang/Object;)Z
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 48
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object p2

    const-string p3, "DateTime.now()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/intermedia/util/DateTimeUtils;->isDateToday(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic isDateTomorrow$default(Lcom/intermedia/util/DateTimeUtils;Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ILjava/lang/Object;)Z
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 55
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object p2

    const-string p3, "DateTime.now().plusDays(1)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/intermedia/util/DateTimeUtils;->isDateTomorrow(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final formattedShowTime(Lorg/joda/time/DateTime;)Ljava/lang/String;
    .locals 7
    .param p1    # Lorg/joda/time/DateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/intermedia/util/DateTimeUtils;->formattedShowTime$default(Lcom/intermedia/util/DateTimeUtils;Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeZone;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formattedShowTime(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeZone;)Ljava/lang/String;
    .locals 7
    .param p1    # Lorg/joda/time/DateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/joda/time/DateTimeZone;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/intermedia/util/DateTimeUtils;->formattedShowTime$default(Lcom/intermedia/util/DateTimeUtils;Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeZone;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formattedShowTime(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeZone;Z)Ljava/lang/String;
    .locals 7
    .param p1    # Lorg/joda/time/DateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/joda/time/DateTimeZone;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/intermedia/util/DateTimeUtils;->formattedShowTime$default(Lcom/intermedia/util/DateTimeUtils;Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeZone;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formattedShowTime(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeZone;ZZ)Ljava/lang/String;
    .locals 4
    .param p1    # Lorg/joda/time/DateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/joda/time/DateTimeZone;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "showTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTimeZone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTime;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 21
    new-instance v1, Lorg/joda/time/LocalTime;

    invoke-direct {v1, v0}, Lorg/joda/time/LocalTime;-><init>(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v1}, Lorg/joda/time/LocalTime;->getMinuteOfHour()I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mma z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "ha z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 30
    :goto_0
    invoke-virtual {p2}, Lorg/joda/time/DateTimeZone;->toTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 31
    invoke-virtual {p1}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_1

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tomorrow "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "showTimeString"

    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_2
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "M/d "

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 38
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final isDateToday(Lorg/joda/time/DateTime;)Z
    .locals 2
    .param p1    # Lorg/joda/time/DateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/intermedia/util/DateTimeUtils;->isDateToday$default(Lcom/intermedia/util/DateTimeUtils;Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isDateToday(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Z
    .locals 1
    .param p1    # Lorg/joda/time/DateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/joda/time/DateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "showTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "todayTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTime;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->withTimeAtStartOfDay()Lorg/joda/time/DateTime;

    move-result-object p1

    .line 50
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/joda/time/DateTime;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p2

    invoke-virtual {p2}, Lorg/joda/time/DateTime;->withTimeAtStartOfDay()Lorg/joda/time/DateTime;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isDateTomorrow(Lorg/joda/time/DateTime;)Z
    .locals 2
    .param p1    # Lorg/joda/time/DateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/intermedia/util/DateTimeUtils;->isDateTomorrow$default(Lcom/intermedia/util/DateTimeUtils;Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isDateTomorrow(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Z
    .locals 1
    .param p1    # Lorg/joda/time/DateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/joda/time/DateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "currentDateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tomorrowDateTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTime;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->withTimeAtStartOfDay()Lorg/joda/time/DateTime;

    move-result-object p1

    .line 57
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/joda/time/DateTime;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p2

    invoke-virtual {p2}, Lorg/joda/time/DateTime;->withTimeAtStartOfDay()Lorg/joda/time/DateTime;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final utcFromISO8601String(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dateString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object p1

    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTime;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p1

    const-string v0, "DateTime.parse(dateStrin\u2026ithZone(DateTimeZone.UTC)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
