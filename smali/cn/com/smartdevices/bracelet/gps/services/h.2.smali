.class Lcn/com/smartdevices/bracelet/gps/services/h;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/com/smartdevices/bracelet/gps/services/d;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/gps/services/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->b:Lcn/com/smartdevices/bracelet/gps/services/d;

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->b:Lcn/com/smartdevices/bracelet/gps/services/d;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/gps/services/d;->a(Lcn/com/smartdevices/bracelet/gps/services/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->b:Lcn/com/smartdevices/bracelet/gps/services/d;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/gps/services/d;->b(Lcn/com/smartdevices/bracelet/gps/services/d;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationBuffer_:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->b:Lcn/com/smartdevices/bracelet/gps/services/d;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/gps/services/d;->c(Lcn/com/smartdevices/bracelet/gps/services/d;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->b:Lcn/com/smartdevices/bracelet/gps/services/d;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/gps/services/d;->c(Lcn/com/smartdevices/bracelet/gps/services/d;)Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/location/Location;->setTime(J)V

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->b:Lcn/com/smartdevices/bracelet/gps/services/d;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/gps/services/d;->c(Lcn/com/smartdevices/bracelet/gps/services/d;)Landroid/location/Location;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->b:Lcn/com/smartdevices/bracelet/gps/services/d;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v1, v0}, Lcn/com/smartdevices/bracelet/gps/services/d;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->b:Lcn/com/smartdevices/bracelet/gps/services/d;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/gps/services/d;->c(Lcn/com/smartdevices/bracelet/gps/services/d;)Landroid/location/Location;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->b:Lcn/com/smartdevices/bracelet/gps/services/d;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->a:Landroid/content/Context;

    const-string v5, "network"

    invoke-static/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/gps/services/d;->a(Lcn/com/smartdevices/bracelet/gps/services/d;Landroid/content/Context;JFLjava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->b:Lcn/com/smartdevices/bracelet/gps/services/d;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/gps/services/h;->a:Landroid/content/Context;

    const-string v5, "network"

    invoke-static/range {v0 .. v5}, Lcn/com/smartdevices/bracelet/gps/services/d;->a(Lcn/com/smartdevices/bracelet/gps/services/d;Landroid/content/Context;JFLjava/lang/String;)V

    return-void
.end method
