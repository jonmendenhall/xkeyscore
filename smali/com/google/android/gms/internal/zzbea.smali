.class public final Lcom/google/android/gms/internal/zzbea;
.super Ljava/lang/Object;


# instance fields
.field private zzfjb:Ljava/lang/String;

.field private zzfjc:I

.field private zzfjd:Ljava/lang/String;

.field private zzfje:Ljava/lang/String;

.field private zzfjg:I

.field private final zzfjk:Lcom/google/android/gms/internal/zzbec;

.field private zzfjl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzfjm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzfjn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzfjo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzctx;",
            ">;"
        }
    .end annotation
.end field

.field private zzfjp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private zzfjq:Z

.field private final zzfjr:Lcom/google/android/gms/internal/zzfkq;

.field private zzfjs:Z

.field private synthetic zzfjt:Lcom/google/android/gms/internal/zzbdy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbdy;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbea;-><init>(Lcom/google/android/gms/internal/zzbdy;[BLcom/google/android/gms/internal/zzbec;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbdy;[BLcom/google/android/gms/internal/zzbdz;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbea;-><init>(Lcom/google/android/gms/internal/zzbdy;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbdy;[BLcom/google/android/gms/internal/zzbec;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbea;->zzfjt:Lcom/google/android/gms/internal/zzbdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjt:Lcom/google/android/gms/internal/zzbdy;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzbdy;->zza(Lcom/google/android/gms/internal/zzbdy;)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjc:I

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjt:Lcom/google/android/gms/internal/zzbdy;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzbdy;->zzb(Lcom/google/android/gms/internal/zzbdy;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjb:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjt:Lcom/google/android/gms/internal/zzbdy;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbea;->zzfjt:Lcom/google/android/gms/internal/zzbdy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfje:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbea;->zzfjg:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjl:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjm:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjn:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjo:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjp:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbea;->zzfjq:Z

    new-instance v1, Lcom/google/android/gms/internal/zzfkq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzfkq;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbea;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbea;->zzfjs:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfje:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbea;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbdy;->zzc(Lcom/google/android/gms/internal/zzbdy;)Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbea;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbdy;->zzc(Lcom/google/android/gms/internal/zzbdy;)Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzfkq;->zzpqm:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbea;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbdy;->zzd(Lcom/google/android/gms/internal/zzbdy;)Lcom/google/android/gms/internal/zzbed;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbea;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    iget-wide v1, p1, Lcom/google/android/gms/internal/zzfkq;->zzpql:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzfkq;->zzpqx:J

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbea;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjk:Lcom/google/android/gms/internal/zzbec;

    return-void
.end method


# virtual methods
.method public final zzbk()V
    .locals 13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbea;->zzfjs:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbea;->zzfjs:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbeh;

    new-instance v10, Lcom/google/android/gms/internal/zzbew;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbea;->zzfjt:Lcom/google/android/gms/internal/zzbdy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdy;->zzf(Lcom/google/android/gms/internal/zzbdy;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbea;->zzfjt:Lcom/google/android/gms/internal/zzbdy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdy;->zzg(Lcom/google/android/gms/internal/zzbdy;)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/zzbea;->zzfjc:I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbea;->zzfjb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbea;->zzfjd:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbea;->zzfje:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbea;->zzfjt:Lcom/google/android/gms/internal/zzbdy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdy;->zze(Lcom/google/android/gms/internal/zzbdy;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzbew;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbea;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdy;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdy;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/google/android/gms/internal/zzbea;->zzfjq:Z

    move-object v1, v0

    move-object v2, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/zzbeh;-><init>(Lcom/google/android/gms/internal/zzbew;Lcom/google/android/gms/internal/zzfkq;Lcom/google/android/gms/internal/zzbec;Lcom/google/android/gms/internal/zzbec;[I[Ljava/lang/String;[I[[B[Lcom/google/android/gms/internal/zzctx;Z)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbeh;->zzfjx:Lcom/google/android/gms/internal/zzbew;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbea;->zzfjt:Lcom/google/android/gms/internal/zzbdy;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbdy;->zzh(Lcom/google/android/gms/internal/zzbdy;)Lcom/google/android/gms/internal/zzbeb;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbew;->zzfjb:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/zzbew;->zzfjc:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/zzbeb;->zzg(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbea;->zzfjt:Lcom/google/android/gms/internal/zzbdy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdy;->zzi(Lcom/google/android/gms/internal/zzbdy;)Lcom/google/android/gms/internal/zzbee;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzbee;->zza(Lcom/google/android/gms/internal/zzbeh;)Lcom/google/android/gms/common/api/PendingResult;

    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzfni:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/PendingResults;->immediatePendingResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method
