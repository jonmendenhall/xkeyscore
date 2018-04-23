.class public final Lcom/google/firebase/auth/internal/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$zzb;


# instance fields
.field private volatile zzmia:I

.field private final zzmib:Lcom/google/firebase/auth/internal/zzk;

.field private volatile zzmic:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/zzk;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/internal/zzk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/zzs;->zzmic:Z

    iput v0, p0, Lcom/google/firebase/auth/internal/zzs;->zzmia:I

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzs;->zzmib:Lcom/google/firebase/auth/internal/zzk;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzk;->zza(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzk;->zzahb()Lcom/google/android/gms/common/api/internal/zzk;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/auth/internal/zzt;

    invoke-direct {p2, p0}, Lcom/google/firebase/auth/internal/zzt;-><init>(Lcom/google/firebase/auth/internal/zzs;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/zzk;->zza(Lcom/google/android/gms/common/api/internal/zzl;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/internal/zzk;

    invoke-direct {v1, p1}, Lcom/google/firebase/auth/internal/zzk;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/internal/zzs;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/zzk;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/internal/zzs;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzs;->zzmic:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/firebase/auth/internal/zzs;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzs;->zzbsi()Z

    move-result p0

    return p0
.end method

.method private final zzbsi()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/auth/internal/zzs;->zzmia:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzs;->zzmic:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzc(Lcom/google/firebase/auth/internal/zzs;)Lcom/google/firebase/auth/internal/zzk;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzs;->zzmib:Lcom/google/firebase/auth/internal/zzk;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzs;->zzmib:Lcom/google/firebase/auth/internal/zzk;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzk;->cancel()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzdym;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/zzdym;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdym;->zzbrv()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/16 v0, 0xe10

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdym;->zzbrw()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    const-wide/32 v0, 0x493e0

    sub-long/2addr v2, v0

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzs;->zzmib:Lcom/google/firebase/auth/internal/zzk;

    iput-wide v2, p1, Lcom/google/firebase/auth/internal/zzk;->zzmhs:J

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/google/firebase/auth/internal/zzk;->zzmht:J

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzs;->zzbsi()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzs;->zzmib:Lcom/google/firebase/auth/internal/zzk;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzk;->zzbsd()V

    :cond_2
    return-void
.end method

.method public final zzgj(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/firebase/auth/internal/zzs;->zzmia:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/google/firebase/auth/internal/zzs;->zzmia:I

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzs;->zzbsi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzs;->zzmib:Lcom/google/firebase/auth/internal/zzk;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzk;->zzbsd()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/google/firebase/auth/internal/zzs;->zzmia:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzs;->zzmib:Lcom/google/firebase/auth/internal/zzk;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzk;->cancel()V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/firebase/auth/internal/zzs;->zzmia:I

    return-void
.end method
