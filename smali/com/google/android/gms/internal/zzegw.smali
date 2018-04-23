.class public final Lcom/google/android/gms/internal/zzegw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzegt;


# instance fields
.field private zzmyg:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzegw;->zzmyg:J

    return-void
.end method


# virtual methods
.method public final zzbx(J)Z
    .locals 2

    const-wide/16 v0, 0x3e8

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzbxp()F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public final zzbxq()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public final zzj(JJ)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzegw;->zzmyg:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    const-wide/16 p1, 0x3e8

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
