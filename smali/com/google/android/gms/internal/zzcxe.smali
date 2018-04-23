.class public final Lcom/google/android/gms/internal/zzcxe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# static fields
.field public static final zzkbs:Lcom/google/android/gms/internal/zzcxe;


# instance fields
.field private final zzefl:Z

.field private final zzefm:Ljava/lang/String;

.field private final zzehn:Z

.field private final zzeho:Ljava/lang/String;

.field private final zzkbt:Z

.field private final zzkbu:Z

.field private final zzkbv:Ljava/lang/Long;

.field private final zzkbw:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/zzcxf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcxf;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcxe;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzcxe;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/google/android/gms/internal/zzcxe;->zzkbs:Lcom/google/android/gms/internal/zzcxe;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcxe;->zzkbt:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcxe;->zzefl:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcxe;->zzefm:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcxe;->zzehn:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcxe;->zzkbu:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcxe;->zzeho:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcxe;->zzkbv:Ljava/lang/Long;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcxe;->zzkbw:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getServerClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxe;->zzefm:Ljava/lang/String;

    return-object v0
.end method

.method public final isIdTokenRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcxe;->zzefl:Z

    return v0
.end method

.method public final zzbdc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcxe;->zzkbt:Z

    return v0
.end method

.method public final zzbdd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcxe;->zzehn:Z

    return v0
.end method

.method public final zzbde()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxe;->zzeho:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbdf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcxe;->zzkbu:Z

    return v0
.end method

.method public final zzbdg()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxe;->zzkbv:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzbdh()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxe;->zzkbw:Ljava/lang/Long;

    return-object v0
.end method
