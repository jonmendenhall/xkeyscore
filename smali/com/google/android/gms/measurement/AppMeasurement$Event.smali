.class public final Lcom/google/android/gms/measurement/AppMeasurement$Event;
.super Lcom/google/firebase/analytics/FirebaseAnalytics$Event;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static final APP_EXCEPTION:Ljava/lang/String; = "_ae"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final zziwg:[Ljava/lang/String;

.field public static final zziwh:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "app_clear_data"

    const-string v1, "app_exception"

    const-string v2, "app_remove"

    const-string v3, "app_upgrade"

    const-string v4, "app_install"

    const-string v5, "app_update"

    const-string v6, "firebase_campaign"

    const-string v7, "error"

    const-string v8, "first_open"

    const-string v9, "first_visit"

    const-string v10, "in_app_purchase"

    const-string v11, "notification_dismiss"

    const-string v12, "notification_foreground"

    const-string v13, "notification_open"

    const-string v14, "notification_receive"

    const-string v15, "os_update"

    const-string v16, "session_start"

    const-string v17, "user_engagement"

    const-string v18, "ad_exposure"

    const-string v19, "adunit_exposure"

    const-string v20, "ad_query"

    const-string v21, "ad_activeview"

    const-string v22, "ad_impression"

    const-string v23, "ad_click"

    const-string v24, "screen_view"

    const-string v25, "firebase_extra_parameter"

    filled-new-array/range {v0 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziwg:[Ljava/lang/String;

    const-string v1, "_cd"

    const-string v2, "_ae"

    const-string v3, "_ui"

    const-string v4, "_ug"

    const-string v5, "_in"

    const-string v6, "_au"

    const-string v7, "_cmp"

    const-string v8, "_err"

    const-string v9, "_f"

    const-string v10, "_v"

    const-string v11, "_iap"

    const-string v12, "_nd"

    const-string v13, "_nf"

    const-string v14, "_no"

    const-string v15, "_nr"

    const-string v16, "_ou"

    const-string v17, "_s"

    const-string v18, "_e"

    const-string v19, "_xa"

    const-string v20, "_xu"

    const-string v21, "_aq"

    const-string v22, "_aa"

    const-string v23, "_ai"

    const-string v24, "_ac"

    const-string v25, "_vs"

    const-string v26, "_ep"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziwh:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics$Event;-><init>()V

    return-void
.end method

.method public static zziq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziwg:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zziwh:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
