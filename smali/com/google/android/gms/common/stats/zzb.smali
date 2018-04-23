.class public final Lcom/google/android/gms/common/stats/zzb;
.super Ljava/lang/Object;


# static fields
.field private static LOG_LEVEL_OFF:I = 0x0

.field public static final zzgdd:Landroid/content/ComponentName;

.field private static zzgde:I = 0x1

.field private static zzgdf:I = 0x2

.field private static zzgdg:I = 0x4

.field private static zzgdh:I = 0x8

.field private static zzgdi:I = 0x10

.field private static zzgdj:I = 0x20

.field private static zzgdk:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzgdd:Landroid/content/ComponentName;

    return-void
.end method
