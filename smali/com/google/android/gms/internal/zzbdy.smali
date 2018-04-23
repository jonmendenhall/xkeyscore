.class public final Lcom/google/android/gms/internal/zzbdy;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static zzebf:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzbeo;",
            ">;"
        }
    .end annotation
.end field

.field private static zzebg:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzbeo;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfix:[Lcom/google/android/gms/internal/zzctx;

.field private static final zzfiy:[Ljava/lang/String;

.field private static final zzfiz:[[B


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzddz:Lcom/google/android/gms/common/util/zzd;

.field private final zzfja:I

.field private zzfjb:Ljava/lang/String;

.field private zzfjc:I

.field private zzfjd:Ljava/lang/String;

.field private zzfje:Ljava/lang/String;

.field private final zzfjf:Z

.field private zzfjg:I

.field private final zzfjh:Lcom/google/android/gms/internal/zzbee;

.field private zzfji:Lcom/google/android/gms/internal/zzbed;

.field private final zzfjj:Lcom/google/android/gms/internal/zzbeb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbdy;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzbdz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbdz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbdy;->zzebg:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/internal/zzbdy;->zzebg:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzbdy;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbdy;->API:Lcom/google/android/gms/common/api/Api;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/internal/zzctx;

    sput-object v1, Lcom/google/android/gms/internal/zzbdy;->zzfix:[Lcom/google/android/gms/internal/zzctx;

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/zzbdy;->zzfiy:[Ljava/lang/String;

    new-array v0, v0, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzbdy;->zzfiz:[[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzbee;Lcom/google/android/gms/common/util/zzd;Lcom/google/android/gms/internal/zzbed;Lcom/google/android/gms/internal/zzbeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjc:I

    const/4 p4, 0x0

    iput p4, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjg:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbdy;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbdy;->zzbz(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzbdy;->zzfja:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjc:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjb:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdy;->zzfje:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjf:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjh:Lcom/google/android/gms/internal/zzbee;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbdy;->zzddz:Lcom/google/android/gms/common/util/zzd;

    new-instance p2, Lcom/google/android/gms/internal/zzbed;

    invoke-direct {p2}, Lcom/google/android/gms/internal/zzbed;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbdy;->zzfji:Lcom/google/android/gms/internal/zzbed;

    iput p4, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjg:I

    iput-object p10, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjj:Lcom/google/android/gms/internal/zzbeb;

    const-string p2, "can\'t be anonymous with an upload account"

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbdy;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjc:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbdy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjb:Ljava/lang/String;

    return-object p0
.end method

.method private static zzb(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static zzbz(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "ClearcutLogger"

    const-string v1, "This can\'t happen."

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbdy;)Lcom/google/android/gms/common/util/zzd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbdy;->zzddz:Lcom/google/android/gms/common/util/zzd;

    return-object p0
.end method

.method static synthetic zzc(Ljava/util/ArrayList;)[I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbdy;->zzb(Ljava/util/ArrayList;)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbdy;)Lcom/google/android/gms/internal/zzbed;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbdy;->zzfji:Lcom/google/android/gms/internal/zzbed;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbdy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjf:Z

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzbdy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbdy;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzbdy;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbdy;->zzfja:I

    return p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzbdy;)Lcom/google/android/gms/internal/zzbeb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjj:Lcom/google/android/gms/internal/zzbeb;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzbdy;)Lcom/google/android/gms/internal/zzbee;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbdy;->zzfjh:Lcom/google/android/gms/internal/zzbee;

    return-object p0
.end method


# virtual methods
.method public final zzi([B)Lcom/google/android/gms/internal/zzbea;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbea;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzbea;-><init>(Lcom/google/android/gms/internal/zzbdy;[BLcom/google/android/gms/internal/zzbdz;)V

    return-object v0
.end method
